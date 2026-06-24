import '../../domain/entities/step_data.dart';

/// Contrato abstracto para el DataSource del Acelerómetro.
/// La UI y los BLoCs SOLO deben conocer y depender de esta interfaz.
abstract class AccelerometerDataSource {
  Stream<StepData> get stepStream;

  Future<void> startCounting();
  Future<void> stopCounting();
  Future<bool> requestPermissions();
}