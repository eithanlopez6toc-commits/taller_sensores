import 'package:equatable/equatable.dart';

/// Enum de tipos de actividad
enum ActivityRecordType {
  walking,
  running,
  stationary,
  unknown,
}

/// Modelo de registro de actividad física
class ActivityRecord extends Equatable {
  final int id;
  final String activityType;
  final DateTime startTime;
  final DateTime? endTime;
  final int stepCount;
  final double distanceKm;
  final double caloriesBurned;
  final DateTime createdAt;
  final double averageSpeed;
  final int durationSeconds;

  const ActivityRecord({
    this.id = 0,
    required this.activityType,
    required this.startTime,
    this.endTime,
    this.stepCount = 0,
    this.distanceKm = 0.0,
    this.caloriesBurned = 0.0,
    required this.createdAt,
    this.averageSpeed = 0.0,
    this.durationSeconds = 0,
  });

  /// Convertir String → enum ActivityRecordType
  ActivityRecordType get type {
    switch (activityType) {
      case 'walking':
        return ActivityRecordType.walking;
      case 'running':
        return ActivityRecordType.running;
      case 'stationary':
        return ActivityRecordType.stationary;
      default:
        return ActivityRecordType.unknown;
    }
  }

  /// Obtener etiqueta en español
  String get label {
    switch (type) {
      case ActivityRecordType.walking:
        return 'Caminando';
      case ActivityRecordType.running:
        return 'Corriendo';
      case ActivityRecordType.stationary:
        return 'Detenido';
      case ActivityRecordType.unknown:
        return 'Desconocido';
    }
  }

  /// Duración como texto formateado
  String get formattedDuration {
    final hours = durationSeconds ~/ 3600;
    final minutes = (durationSeconds % 3600) ~/ 60;
    final seconds = durationSeconds % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    }
    return '${minutes}m ${seconds}s';
  }

  /// Fecha formateada para UI
  String get formattedDate {
    return '${startTime.day}/${startTime.month}/${startTime.year} ${startTime.hour}:${startTime.minute.toString().padLeft(2, '0')}';
  }

  @override
  List<Object?> get props => [
    id,
    activityType,
    startTime,
    endTime,
    stepCount,
    distanceKm,
    caloriesBurned,
    createdAt,
    averageSpeed,
    durationSeconds,
  ];
}