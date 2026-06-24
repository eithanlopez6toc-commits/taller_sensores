import 'location_point.dart';

class Route {
  final List<LocationPoint> points = [];
  DateTime? startTime;
  DateTime? endTime;
  bool isFinished = false;

  void addPoint(LocationPoint point) {
    if (isFinished) return;
    if (points.isEmpty) {
      startTime = point.timestamp;
    }
    points.add(point);
  }

  void finish() {
    isFinished = true;
    endTime = DateTime.now();
  }

  Duration get duration {
    if (startTime == null) return Duration.zero;
    final end = endTime ?? DateTime.now();
    return end.difference(startTime!);
  }

  double get distanceKm {
    if (points.length < 2) return 0.0;
    double totalDistance = 0.0;
    for (int i = 0; i < points.length - 1; i++) {
      totalDistance += points[i].distanceTo(points[i + 1]);
    }
    return totalDistance;
  }

  double get averageSpeed {
    final hours = duration.inSeconds / 3600.0;
    if (hours == 0) return 0.0;
    return distanceKm / hours;
  }

  double get estimatedCalories {
    // Estimación simple para actividad física basada en distancia
    return distanceKm * 65.0; 
  }
}