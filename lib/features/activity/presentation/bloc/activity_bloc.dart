import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/datasources/activity_datasource.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../data/datasources/activity_repository.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';
import '../../data/services/tts_service.dart';
import '../../../../../core/database/database.dart';

// --- EVENTOS ---
abstract class ActivityEvent extends Equatable {
  @override List<Object?> get props => [];
}
class ActivityStarted extends ActivityEvent {}
class ActivityStopped extends ActivityEvent {}

class ActivityChanged extends ActivityEvent {
  final ActivityState state;
  ActivityChanged(this.state);
  @override List<Object?> get props => [state];
}

class FallDetected extends ActivityEvent {
  final FallEvent event;
  FallDetected(this.event);
  @override List<Object?> get props => [event];
}

class FallConfirmed extends ActivityEvent {}
class FallDismissed  extends ActivityEvent {}

// --- ESTADOS ---
abstract class ActivityBlocState extends Equatable {
  @override List<Object?> get props => [];
}
class ActivityInitial  extends ActivityBlocState {}

class ActivityTracking extends ActivityBlocState {
  final ActivityState current;
  ActivityTracking(this.current);
  @override List<Object?> get props => [current];
}

class FallAlert extends ActivityBlocState {
  final FallEvent event;
  FallAlert(this.event);
  @override List<Object?> get props => [event];
}

// --- BLOC ---
class ActivityBloc extends Bloc<ActivityEvent, ActivityBlocState> {
  final ActivityDataSource    _dataSource;
  final TtsService            _ttsService;
  final ActivityRepository    _repository;

  StreamSubscription<ActivityState>? _activitySub;
  StreamSubscription<FallEvent>?     _fallSub;

  static const Duration _debounceDuration = Duration(milliseconds: 300);
  UserActivityType? _lastAnnouncedType;
  UserActivityType? _pendingType;
  Timer?            _debounceTimer;

  DateTime?      _sessionStart;
  ActivityState? _lastState;
  // ✅ Guardamos el tiempo real en el momento de detener, antes de resetear datasource
  Duration?      _finalDuration;

  static final ActivityState _emptyState = ActivityState(
    type: UserActivityType.unknown,
    stepCount: 0,
  );

  ActivityBloc({
    required ActivityDataSource  dataSource,
    required TtsService          ttsService,
    required ActivityRepository  repository,
  })  : _dataSource = dataSource,
        _ttsService  = ttsService,
        _repository  = repository,
        super(ActivityInitial()) {
    // ✅ transformer: sequential() evita que un ActivityChanged tardío
    // se procese después de ActivityStopped y "resucite" datos viejos.
    on<ActivityStarted>(_onStarted, transformer: sequential());
    on<ActivityStopped>(_onStopped, transformer: sequential());
    on<ActivityChanged>(_onActivityChanged, transformer: sequential());
    on<FallDetected>  (_onFallDetected,  transformer: sequential());
    on<FallConfirmed> (_onFallConfirmed, transformer: sequential());
    on<FallDismissed> (_onFallDismissed, transformer: sequential());
  }

  Future<void> _onStarted(ActivityStarted event, Emitter<ActivityBlocState> emit) async {
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) return;

    await _ttsService.init();
    _lastAnnouncedType = UserActivityType.stationary;
    _sessionStart      = DateTime.now();
    _lastState         = null;
    _finalDuration     = null;

    emit(ActivityTracking(_emptyState));
    await _dataSource.startTracking();

    _activitySub = _dataSource.activityStream.listen((s) {
      _lastState = s;
      add(ActivityChanged(s));
    });
    _fallSub = _dataSource.fallStream.listen((f) => add(FallDetected(f)));
  }

  Future<void> _onStopped(ActivityStopped event, Emitter<ActivityBlocState> emit) async {
    // ✅ Capturar duración ANTES de cancelar suscripciones y detener datasource
    final start = _sessionStart;
    _finalDuration = start != null ? DateTime.now().difference(start) : _lastState?.duration;

    await _cancelSubscriptions();
    await _saveSession();
    await _dataSource.stopTracking();

    // ✅ Limpieza completa del estado interno para que el próximo
    // ActivityStarted arranque desde cero, sin restos de la sesión anterior.
    _lastState     = null;
    _sessionStart  = null;
    _finalDuration = null;

    emit(ActivityInitial());
  }

  void _onActivityChanged(ActivityChanged event, Emitter<ActivityBlocState> emit) {
    if (state is FallAlert) return;

    final incoming = event.state.type;
    if (incoming != _lastAnnouncedType && incoming != UserActivityType.unknown) {
      _debounceTimer?.cancel();
      _pendingType = incoming;
      _debounceTimer = Timer(_debounceDuration, () {
        if (_pendingType != null && _pendingType != _lastAnnouncedType) {
          _ttsService.speak(event.state.voiceMessage);
          _lastAnnouncedType = _pendingType;
          _pendingType = null;
        }
      });
    }

    emit(ActivityTracking(event.state));
  }

  Future<void> _onFallDetected(FallDetected event, Emitter<ActivityBlocState> emit) async {
    _debounceTimer?.cancel();
    _pendingType = null;
    emit(FallAlert(event.event));
    unawaited(_ttsService.speak('¡Atención! Se detectó una posible caída. ¿Estás bien?'));
  }

  Future<void> _onFallConfirmed(FallConfirmed event, Emitter<ActivityBlocState> emit) async {
    _dataSource.clearFallStatus();
    _lastAnnouncedType = UserActivityType.stationary;
    _pendingType = null;
    emit(ActivityTracking(_lastState ?? _emptyState));
    unawaited(_ttsService.speak('Me alegra que estés bien. Continuamos.'));
  }

  Future<void> _onFallDismissed(FallDismissed event, Emitter<ActivityBlocState> emit) async {
    _dataSource.clearFallStatus();
    _lastAnnouncedType = UserActivityType.stationary;
    _pendingType = null;
    emit(ActivityTracking(_lastState ?? _emptyState));
  }

  Future<void> _saveSession() async {
    final s     = _lastState;
    final start = _sessionStart;
    if (s == null || start == null || s.stepCount == 0) return;

    // ✅ Usar _finalDuration capturado antes de detener, o calcular desde sessionStart
    final duration = _finalDuration ?? DateTime.now().difference(start);

    final ActivityDataSourceImpl? impl = _dataSource is ActivityDataSourceImpl
      ? _dataSource
      : null;
    final routeJson = impl?.routePoints.isNotEmpty == true
        ? impl!.routePointsJson
        : null;

    final now = DateTime.now();
    try {
      await _repository.createActivity(ActivityRecordsCompanion(
        activityType:    Value(_typeToString(s.type)),
        startTime:       Value(start),
        endTime:         Value(now),
        stepCount:       Value(s.stepCount),
        distanceKm:      Value(s.distanceKm),
        caloriesBurned:  Value(s.calories),
        durationSeconds: Value(duration.inSeconds), // ✅ tiempo real
        averageSpeed:    Value(
          duration.inSeconds > 0
              ? s.distanceKm / (duration.inSeconds / 3600)
              : 0.0,
        ),
        createdAt:       Value(now),
        routePointsJson: Value(routeJson),
      ));
    } catch (e) {
      debugPrint('Error guardando sesión: $e');
    }
  }

  String _typeToString(UserActivityType type) => switch (type) {
    UserActivityType.running    => 'running',
    UserActivityType.walking    => 'walking',
    UserActivityType.stationary => 'stationary',
    UserActivityType.unknown    => 'unknown',
  };

  Future<void> _cancelSubscriptions() async {
    await _activitySub?.cancel();
    await _fallSub?.cancel();
    _debounceTimer?.cancel();
    _lastAnnouncedType = null;
    _pendingType       = null;
  }

  @override
  Future<void> close() async {
    final start = _sessionStart;
    _finalDuration = start != null ? DateTime.now().difference(start) : _lastState?.duration;
    await _cancelSubscriptions();
    await _saveSession();
    _ttsService.dispose();
    return super.close();
  }
}