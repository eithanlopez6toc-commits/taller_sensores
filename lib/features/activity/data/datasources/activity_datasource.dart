import 'package:fitness_tracker/features/activity/domain/entities/activity_state.dart';
import 'package:fitness_tracker/features/activity/domain/entities/fall_event.dart';

abstract class ActivityDataSource {
  Stream<ActivityState> get activityStream;
  Stream<FallEvent> get fallStream;

  Future<void> startTracking();
  Future<void> stopTracking();
  Future<bool> requestPermissions();
  
  // ✅ Agregado para resetear el flag de caída
  void clearFallStatus();
}