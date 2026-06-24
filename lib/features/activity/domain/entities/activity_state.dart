import 'package:equatable/equatable.dart';

enum UserActivityType { running, walking, stationary, unknown }

class ActivityState extends Equatable {
  final UserActivityType type;
  final int stepCount;
  final double distanceKm;
  final double calories;
  final Duration duration;

  const ActivityState({
    required this.type,
    required this.stepCount,
    this.distanceKm = 0.0,
    this.calories = 0.0,
    this.duration = Duration.zero,
  });

  ActivityState copyWith({
    UserActivityType? type,
    int? stepCount,
    double? distanceKm,
    double? calories,
    Duration? duration,
  }) {
    return ActivityState(
      type: type ?? this.type,
      stepCount: stepCount ?? this.stepCount,
      distanceKm: distanceKm ?? this.distanceKm,
      calories: calories ?? this.calories,
      duration: duration ?? this.duration,
    );
  }

  String get voiceMessage {
    return switch (type) {
      UserActivityType.running => "Estás corriendo.",
      UserActivityType.walking => "Estás caminando.",
      UserActivityType.stationary => "Estás en reposo.",
      _ => "",
    };
  }

  @override
  List<Object?> get props => [type, stepCount, distanceKm, calories, duration];
}