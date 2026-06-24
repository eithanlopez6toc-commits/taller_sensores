import '../../../../core/database/database.dart';

/// Repository para gestionar registros de actividad física usando Drift
class ActivityRepository {
  final AppDatabase database;

  ActivityRepository(this.database);

  // ═══════════════════════════════════════════════════════════════
  // CREATE
  // ═══════════════════════════════════════════════════════════════

  /// Guardar nuevo registro de actividad
  Future<int> createActivity(ActivityRecordsCompanion activity) async {
    return await database.createActivity(activity);
  }

  // ═══════════════════════════════════════════════════════════════
  // READ
  // ═══════════════════════════════════════════════════════════════

  /// Obtener todos los registros ordenados por fecha desc
  Future<List<ActivityRecord>> getAllActivities() async {
    return await database.getAllActivities();
  }

  /// Obtener registros por rango de fechas
  Future<List<ActivityRecord>> getActivitiesByDateRange(
    DateTime startDate,
    DateTime endDate,
  ) async {
    return await database.getActivitiesByDateRange(startDate, endDate);
  }

  /// Obtener registros del último día
  Future<List<ActivityRecord>> getTodayActivities() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));

    return await getActivitiesByDateRange(startOfDay, endOfDay);
  }

  /// Obtener registros de la semana
  Future<List<ActivityRecord>> getWeekActivities() async {
    final now = DateTime.now();
    final weekAgo = now.subtract(const Duration(days: 7));

    return await getActivitiesByDateRange(weekAgo, now);
  }

  /// Obtener registros del mes
  Future<List<ActivityRecord>> getMonthActivities() async {
    final now = DateTime.now();
    final monthAgo = now.subtract(const Duration(days: 30));

    return await getActivitiesByDateRange(monthAgo, now);
  }

  /// Obtener un registro por ID
  Future<ActivityRecord?> getActivityById(int id) async {
    return await database.getActivityById(id);
  }

  /// Obtener estadísticas totales
  Future<ActivityStats> getStats() async {
    return await database.getStats();
  }

  // ═══════════════════════════════════════════════════════════════
  // UPDATE
  // ═══════════════════════════════════════════════════════════════

  /// Actualizar un registro existente
  Future<bool> updateActivity(ActivityRecord activity) async {
    return await database.updateActivity(activity);
  }

  // ═══════════════════════════════════════════════════════════════
  // DELETE
  // ═══════════════════════════════════════════════════════════════

  /// Eliminar un registro por ID
  Future<bool> deleteActivity(int id) async {
    return await database.deleteActivity(id);
  }

  /// Eliminar todos los registros
  Future<int> deleteAllActivities() async {
    return await database.deleteAllActivities();
  }

  /// Eliminar registros anteriores a una fecha
  Future<int> deleteActivitiesBefore(DateTime date) async {
    return await database.deleteActivitiesBefore(date);
  }
}