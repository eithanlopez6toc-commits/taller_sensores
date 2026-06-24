import 'package:get_it/get_it.dart';

// Core
import 'core/database/database.dart';

// Features: Activity
import 'features/activity/data/datasources/activity_datasource.dart';
import 'features/activity/data/datasources/activity_datasource_impl.dart';
import 'features/activity/data/datasources/activity_repository.dart';
import 'features/activity/data/services/tts_service.dart';
import 'features/activity/presentation/bloc/activity_bloc.dart';

// Features: Auth & Tracking
import 'features/auth/tracking/data/datasources/gps_datasource.dart';
import 'features/auth/data/datasources/biometric_datasource.dart';
import 'features/auth/domain/usecases/authenticate_user.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // ─────────────────────────────────────────────────────────────
  // BASE DE DATOS (Drift - SQLite)
  // ─────────────────────────────────────────────────────────────
  final database = AppDatabase();
  sl.registerSingleton<AppDatabase>(database);

  // ─────────────────────────────────────────────────────────────
  // SERVICIOS
  // ─────────────────────────────────────────────────────────────
  sl.registerLazySingleton<TtsService>(() => TtsService());

  // ─────────────────────────────────────────────────────────────
  // DATASOURCES
  // ─────────────────────────────────────────────────────────────
  sl.registerLazySingleton<ActivityDataSource>(
    () => ActivityDataSourceImpl(),
  );

  sl.registerLazySingleton<GpsDataSource>(
    () => GpsDataSourceImpl(),
  );

  sl.registerLazySingleton<BiometricDataSource>(
    () => BiometricDataSourceImpl(),
  );

  // ─────────────────────────────────────────────────────────────
  // REPOSITORY
  // ─────────────────────────────────────────────────────────────
  sl.registerLazySingleton<ActivityRepository>(
    () => ActivityRepository(sl<AppDatabase>()),
  );

  // ─────────────────────────────────────────────────────────────
  // USE CASES
  // ─────────────────────────────────────────────────────────────
  sl.registerLazySingleton<AuthenticateUser>(
    () => AuthenticateUser(sl<BiometricDataSource>()),
  );

  // ─────────────────────────────────────────────────────────────
  // BLOCS
  // ─────────────────────────────────────────────────────────────
  sl.registerFactory<AuthBloc>(
    () => AuthBloc(sl<AuthenticateUser>()),
  );

  // ✅ Cambiado de registerFactory → registerLazySingleton
  // Factory creaba una instancia nueva en cada context.read<ActivityBloc>()
  // causando que FallConfirmed llegara a un bloc diferente al que emitió FallAlert
  sl.registerLazySingleton<ActivityBloc>(
    () => ActivityBloc(
      dataSource: sl<ActivityDataSource>(),
      ttsService: sl<TtsService>(),
      repository: sl<ActivityRepository>(),
    ),
  );
}