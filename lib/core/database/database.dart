import 'dart:io';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../features/auth/tracking/domain/entities/location_point.dart';

part 'database.g.dart';

@DataClassName('ActivityRecord')
class ActivityRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get activityType => text()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime().nullable()();
  IntColumn get stepCount => integer().withDefault(const Constant(0))();
  RealColumn get distanceKm => real().withDefault(const Constant(0.0))();
  RealColumn get caloriesBurned => real().withDefault(const Constant(0.0))();
  DateTimeColumn get createdAt => dateTime()();
  RealColumn get averageSpeed => real().withDefault(const Constant(0.0))();
  IntColumn get durationSeconds => integer().withDefault(const Constant(0))();
  TextColumn get routePointsJson => text().nullable()(); 
}

@DriftDatabase(tables: [ActivityRecords])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ActivityRecord>> getAllActivities() {
    return (select(activityRecords)
          ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)]))
        .get();
  }

  Future<List<ActivityRecord>> getActivitiesByDateRange(DateTime startDate, DateTime endDate) {
    return (select(activityRecords)
          ..where((t) => t.createdAt.isBetweenValues(startDate, endDate))
          ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)]))
        .get();
  }

  Future<ActivityRecord?> getActivityById(int id) {
    return (select(activityRecords)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<int> createActivity(ActivityRecordsCompanion activity) {
    return into(activityRecords).insert(activity);
  }

  Future<bool> updateActivity(ActivityRecord activity) async {
    return await update(activityRecords).replace(activity);
  }

  Future<bool> deleteActivity(int id) async {
    return await (delete(activityRecords)..where((t) => t.id.equals(id))).go() > 0;
  }

  Future<int> deleteAllActivities() => delete(activityRecords).go();

  Future<int> deleteActivitiesBefore(DateTime date) {
    return (delete(activityRecords)..where((t) => t.createdAt.isSmallerThanValue(date))).go();
  }

  Future<ActivityStats> getStats() async {
    final records = await getAllActivities();
    if (records.isEmpty) return ActivityStats.empty();

    final totalDistance = records.fold<double>(0, (sum, r) => sum + r.distanceKm);
    final totalSeconds = records.fold<int>(0, (sum, r) => sum + r.durationSeconds);

    return ActivityStats(
      totalActivities: records.length,
      totalSteps: records.fold<int>(0, (sum, r) => sum + r.stepCount),
      totalDistanceKm: totalDistance,
      totalCaloriesBurned: records.fold<double>(0, (sum, r) => sum + r.caloriesBurned),
      totalDurationSeconds: totalSeconds,
      averageSpeed: totalDistance / (totalSeconds > 0 ? totalSeconds / 3600 : 1),
    );
  }
}

// ─── DEFINICIÓN DEL ENUM Y EXTENSIONES ──────────────────────────────────────

enum ActivityRecordType { walking, running, stationary, unknown }

extension ActivityRecordExtension on ActivityRecord {
  // Convierte el texto guardado en BD a Enum
  ActivityRecordType get type {
    return ActivityRecordType.values.firstWhere(
      (e) => e.name == activityType,
      orElse: () => ActivityRecordType.unknown,
    );
  }

  // Traducción para mostrar en pantalla
  String get label {
    switch (type) {
      case ActivityRecordType.walking: return 'Caminando';
      case ActivityRecordType.running: return 'Corriendo';
      case ActivityRecordType.stationary: return 'Detenido';
      default: return 'Desconocido';
    }
  }

  String get formattedDate => '${createdAt.day}/${createdAt.month} ${createdAt.hour}:${createdAt.minute.toString().padLeft(2, '0')}';

  List<LocationPoint> get points {
    if (routePointsJson == null || routePointsJson!.isEmpty) return [];
    try {
      final List<dynamic> list = jsonDecode(routePointsJson!);
      return list.map((p) => LocationPoint(
        latitude: (p['lat'] as num).toDouble(),
        longitude: (p['lon'] as num).toDouble(),
        altitude: (p['alt'] as num?)?.toDouble() ?? 0.0,
        speed: (p['speed'] as num?)?.toDouble() ?? 0.0,
        accuracy: (p['acc'] as num?)?.toDouble() ?? 0.0,
        timestamp: DateTime.tryParse(p['time'] ?? '') ?? DateTime.now(),
      )).toList();
    } catch (e) {
      debugPrint("Error al decodificar ruta: $e");
      return [];
    }
  }

  String get formattedDuration {
    final hours = durationSeconds ~/ 3600;
    final minutes = (durationSeconds % 3600) ~/ 60;
    return hours > 0 ? '${hours}h ${minutes}m' : '${minutes}m';
  }
}

// ─── HELPER DE CONEXIÓN Y ESTADÍSTICAS ──────────────────────────────────────

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'fitness_app.db'));
    return NativeDatabase(file);
  });
}

class ActivityStats {
  final int totalActivities, totalSteps, totalDurationSeconds;
  final double totalDistanceKm, totalCaloriesBurned, averageSpeed;

  ActivityStats({
    required this.totalActivities, required this.totalSteps, 
    required this.totalDistanceKm, required this.totalCaloriesBurned, 
    required this.totalDurationSeconds, required this.averageSpeed
  });

  factory ActivityStats.empty() => ActivityStats(
    totalActivities: 0, totalSteps: 0, totalDistanceKm: 0, 
    totalCaloriesBurned: 0, totalDurationSeconds: 0, averageSpeed: 0
  );
}