import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sensors_plus/sensors_plus.dart';
import '../../domain/entities/step_data.dart';
import 'accelerometer_datasource.dart'; // Importa el contrato

class AccelerometerDataSourceImpl implements AccelerometerDataSource {
  // ── 1. CONFIGURACIÓN FILTROS Y UMBRALES CORREGIDOS ──────────────────────
  static const double _alpha = 0.85; 
  static const double _stepThreshold = 1.35; 
  static const int _minStepIntervalMs = 360;

  // ── ESTRUCTURA DE ESTADO INTERNO ÚNICO ──────────────────────────────────
  int _stepCount = 0;
  double _gx = 0.0, _gy = 9.8, _gz = 0.0; // Componentes de gravedad por eje
  double _lastMotionMagnitude = 0.0;
  int _lastStepTime = 0;

  // Lazy & Broadcast: se crea una sola vez al inyectarse y se comparte limpiamente
  late final Stream<StepData> _sharedStream = _buildStream();

  Stream<StepData> _buildStream() {
    return accelerometerEventStream(
      samplingPeriod: SensorInterval.normalInterval, // ~50Hz constante
    ).map((AccelerometerEvent e) {
      final int now = DateTime.now().millisecondsSinceEpoch;

      // ── PASO 1: FILTRADO VECTORIAL DE GRAVEDAD (Low-Pass por componente) ──
      _gx = (_alpha * _gx) + ((1.0 - _alpha) * e.x);
      _gy = (_alpha * _gy) + ((1.0 - _alpha) * e.y);
      _gz = (_alpha * _gz) + ((1.0 - _alpha) * e.z);

      // ── PASO 2: EXTRACCIÓN DE ACELERACIÓN LINEAL NETO (High-Pass) ──
      final double userX = e.x - _gx;
      final double userY = e.y - _gy;
      final double userZ = e.z - _gz;

      final double motionMagnitude = sqrt(userX * userX + userY * userY + userZ * userZ);
      final double rawMagnitude = sqrt(e.x * e.x + e.y * e.y + e.z * e.z);

      // ── PASO 3: DETECTOR DE PICOS CON DERIVADA NEGATIVA ──
      final bool isPeak = motionMagnitude > _stepThreshold &&
          motionMagnitude < _lastMotionMagnitude && 
          _lastMotionMagnitude >= _stepThreshold &&
          (now - _lastStepTime) > _minStepIntervalMs;

      if (isPeak) {
        _stepCount++;
        _lastStepTime = now;
      }

      _lastMotionMagnitude = motionMagnitude;

      // ── PASO 4: CLASIFICACIÓN DE ACTIVIDAD ASOCIADA ──
      final ActivityType type;
      if (motionMagnitude > 4.2) {
        type = ActivityType.running;
      } else if (motionMagnitude > _stepThreshold) {
        type = ActivityType.walking;
      } else {
        type = ActivityType.stationary;
      }

      return StepData(
        stepCount: _stepCount,
        activityType: type,
        magnitude: rawMagnitude,
      );
    }).asBroadcastStream(); // Permite múltiples escuchas sin duplicar subprocesos nativos
  }

  @override
  Stream<StepData> get stepStream => _sharedStream;

  @override
  Future<void> startCounting() async {
    _stepCount = 0;
    _gx = 0.0;
    _gy = 9.8;
    _gz = 0.0;
    _lastMotionMagnitude = 0.0;
    _lastStepTime = 0;
    debugPrint('⚡ AccelerometerDataSource: Conteo de pasos vectorizado e iniciado.');
  }

  @override
  Future<void> stopCounting() async {
    debugPrint('🛑 AccelerometerDataSource: Conteo detenido. Pasos finales: $_stepCount');
  }

  @override
  Future<bool> requestPermissions() async {
    final activityStatus = await Permission.activityRecognition.request();
    return activityStatus.isGranted;
  }
}