import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import '../../domain/entities/location_point.dart';

abstract class GpsDataSource {
  Future<LocationPoint?> getCurrentLocation();
  Stream<LocationPoint> get locationStream;
  Future<bool> isLocationServiceEnabled();
  Future<bool> requestPermissions();
  Future<void> openLocationSettings();
}

class GpsDataSourceImpl implements GpsDataSource {
  // ✅ Stream persistente como campo, no recalculado en cada get
  late final Stream<LocationPoint> _locationStream = Geolocator.getPositionStream(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 5,
    ),
  ).map((Position position) => LocationPoint(
    latitude: position.latitude,
    longitude: position.longitude,
    altitude: position.altitude,
    speed: position.speed,
    accuracy: position.accuracy,
    timestamp: position.timestamp,
  ));

  @override
  Stream<LocationPoint> get locationStream => _locationStream;

  @override
  Future<LocationPoint?> getCurrentLocation() async {
    try {
      final isServiceEnabled = await isLocationServiceEnabled();
      if (!isServiceEnabled) return null;

      final position = await Geolocator.getCurrentPosition(
  locationSettings: const LocationSettings(
    accuracy: LocationAccuracy.best,
    timeLimit: Duration(seconds: 15),
  ),
);
      return _mapToEntity(position);
    } catch (e) {
      debugPrint('⚠️ Error GPS, intentando obtener última posición conocida: $e');
      final lastPosition = await Geolocator.getLastKnownPosition();
      return lastPosition != null ? _mapToEntity(lastPosition) : null;
    }
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<bool> requestPermissions() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission == LocationPermission.whileInUse ||
           permission == LocationPermission.always;
  }

  @override
  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }

  LocationPoint _mapToEntity(Position pos) {
    return LocationPoint(
      latitude: pos.latitude,
      longitude: pos.longitude,
      altitude: pos.altitude,
      speed: pos.speed,
      accuracy: pos.accuracy,
      timestamp: pos.timestamp,
    );
  }
}