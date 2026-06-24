import 'dart:async';
import 'dart:math' as math;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:flutter_activity_recognition/flutter_activity_recognition.dart' as far;
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'activity_datasource.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';
// Local lightweight LocationPoint to avoid missing import
class LocationPoint {
  final double latitude;
  final double longitude;
  final double altitude;
  final double speed;
  final double accuracy;
  final DateTime? timestamp;

  LocationPoint({
    required this.latitude,
    required this.longitude,
    required this.altitude,
    required this.speed,
    required this.accuracy,
    required this.timestamp,
  });

  /// Returns distance to [other] in meters using haversine formula.
  double distanceTo(LocationPoint other) {
    const double earthRadius = 6371000; // meters
    double toRad(double deg) => deg * (math.pi / 180);
    final dLat = toRad(other.latitude - latitude);
    final dLon = toRad(other.longitude - longitude);
    final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(toRad(latitude)) * math.cos(toRad(other.latitude)) *
        math.sin(dLon / 2) * math.sin(dLon / 2);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    return earthRadius * c;
  }
}

class ActivityDataSourceImpl implements ActivityDataSource {
  final StreamController<ActivityState> _activityController =
      StreamController<ActivityState>.broadcast();
  final StreamController<FallEvent> _fallController =
      StreamController<FallEvent>.broadcast();

  @override
  Stream<ActivityState> get activityStream => _activityController.stream;
  @override
  Stream<FallEvent> get fallStream => _fallController.stream;

  StreamSubscription<AccelerometerEvent>? _accelerometerSub;
  StreamSubscription<far.Activity>?           _recognitionSub;
  StreamSubscription<Position>?           _gpsSub;

  final _activityRecognition = far.FlutterActivityRecognition.instance;

  int               _stepCount       = 0;
  UserActivityType  _currentActivity = UserActivityType.stationary;
  DateTime          _lastStepTime    = DateTime.now();
  bool              _isFallDetected  = false;
  bool              _isTracking      = false;
  DateTime?         _trackingStartTime;

  // GPS
  final List<LocationPoint> _routePoints = [];
  double _gpsDistanceKm = 0.0;
  LocationPoint? _lastGpsPoint;

  // Transición running → walking por tiempo
  DateTime? _lastRunImpact;
  static const Duration _runCooldown  = Duration(milliseconds: 1500);
  static const Duration _stepCooldown = Duration(milliseconds: 500);
  static const double   _stepThreshold = 10.5;
  static const double   _runThreshold  = 14.0;
  static const double   _fallThreshold = 28.0;
  final double _strideLength = 0.75;

  @override
  Future<bool> requestPermissions() async {
    try {
      final activity = await Permission.activityRecognition.request();
      final location = await Permission.locationWhenInUse.request();
      return activity.isGranted && location.isGranted;
    } catch (e) {
      debugPrint('Error de permisos: $e');
      return false;
    }
  }

  @override
  Future<void> startTracking() async {
    if (_isTracking) return;
    _isTracking        = true;
    _isFallDetected    = false;
    _lastRunImpact     = null;
    _trackingStartTime = DateTime.now();
    _routePoints.clear();
    _gpsDistanceKm = 0.0;
    _lastGpsPoint  = null;

    // ── GPS ─────────────────────────────────────────────────────
    _gpsSub = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 5, // nuevo punto cada 5 metros
      ),
    ).listen((pos) {
      final point = LocationPoint(
        latitude:  pos.latitude,
        longitude: pos.longitude,
        altitude:  pos.altitude,
        speed:     pos.speed,
        accuracy:  pos.accuracy,
        timestamp: pos.timestamp,
      );

      // Acumular distancia GPS si la precisión es aceptable
      if (pos.accuracy < 25) {
        if (_lastGpsPoint != null) {
          final d = _lastGpsPoint!.distanceTo(point) / 1000;
          if (d < 0.5) _gpsDistanceKm += d; // ignora saltos > 500m
        }
        _routePoints.add(point);
        _lastGpsPoint = point;
        _notifyState();
      }
    }, onError: (Object e) => debugPrint('GPS error: $e'));

    // ── Acelerómetro ─────────────────────────────────────────────
    _accelerometerSub = accelerometerEventStream().listen((event) {
      final double magnitude = math.sqrt(
        event.x * event.x + event.y * event.y + event.z * event.z,
      );

      // 1. Caída
      if (magnitude >= _fallThreshold) {
        if (!_isFallDetected) {
          _isFallDetected = true;
          _fallController.add(
            FallEvent(magnitude: magnitude, occurredAt: DateTime.now()),
          );
        }
        return;
      }

      if (_isFallDetected) return;

      // 2. Carrera
      if (magnitude >= _runThreshold) {
        _lastRunImpact = DateTime.now();
        if (_currentActivity != UserActivityType.running) {
          _currentActivity = UserActivityType.running;
          _notifyState();
        }
        return;
      }

      // 3. Caminata
      if (magnitude > _stepThreshold && magnitude < _runThreshold) {
        final lastRun          = _lastRunImpact;
        final stillInCooldown  = lastRun != null &&
            DateTime.now().difference(lastRun) < _runCooldown;
        if (stillInCooldown) return;

        if (DateTime.now().difference(_lastStepTime) > _stepCooldown) {
          _stepCount++;
          _lastStepTime = DateTime.now();
          if (_currentActivity != UserActivityType.walking) {
            _currentActivity = UserActivityType.walking;
          }
          _notifyState();
        }
        return;
      }

      // 4. Quieto por acelerómetro (respuesta rápida)
      if (magnitude <= _stepThreshold) {
        final sinceLastStep = DateTime.now().difference(_lastStepTime);
        if (sinceLastStep > const Duration(seconds: 3) &&
            _currentActivity != UserActivityType.stationary) {
          _currentActivity = UserActivityType.stationary;
          _lastRunImpact   = null;
          _notifyState();
        }
      }
    });

    // ── Reconocimiento nativo (confirmación extra) ────────────────
    _recognitionSub = _activityRecognition.activityStream.listen((nativeEvent) {
      if (nativeEvent.type == far.ActivityType.STILL && !_isFallDetected) {
        _lastRunImpact = null;
        if (_currentActivity != UserActivityType.stationary) {
          _currentActivity = UserActivityType.stationary;
          _notifyState();
        }
      }
    });
  }

  @override
  Future<void> stopTracking() async {
    _isTracking        = false;
    _isFallDetected    = false;
    _lastRunImpact     = null;
    _trackingStartTime = null;
    await _accelerometerSub?.cancel();
    await _recognitionSub?.cancel();
    await _gpsSub?.cancel();
  }

  @override
  void clearFallStatus() {
    _isFallDetected = false;
  }

  // ── Expone los puntos GPS para que el Bloc los guarde ───────────
  List<LocationPoint> get routePoints => List.unmodifiable(_routePoints);

  String get routePointsJson {
    return jsonEncode(_routePoints.map((p) => {
      'lat':   p.latitude,
      'lon':   p.longitude,
      'alt':   p.altitude,
      'speed': p.speed,
      'acc':   p.accuracy,
      'time':  p.timestamp?.toIso8601String(),
    }).toList());
  }

  void _notifyState() {
    if (!_activityController.isClosed) {
      // Distancia: GPS si hay puntos suficientes, si no pasos
      final distanceKm = _routePoints.length >= 2
          ? _gpsDistanceKm
          : (_stepCount * _strideLength) / 1000;

      final calories = _stepCount * 0.05;
      final duration = _trackingStartTime != null
          ? DateTime.now().difference(_trackingStartTime!)
          : Duration.zero;

      _activityController.add(ActivityState(
        type:       _currentActivity,
        stepCount:  _stepCount,
        distanceKm: distanceKm,
        calories:   calories,
        duration:   duration,
      ));
    }
  }

  void resetData() {
    _stepCount     = 0;
    _isFallDetected = false;
    _lastRunImpact  = null;
    _gpsDistanceKm  = 0.0;
    _routePoints.clear();
    _lastGpsPoint   = null;
    _currentActivity = UserActivityType.stationary;
    _trackingStartTime = DateTime.now();
    _notifyState();
  }
}