import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitness_tracker/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:fitness_tracker/features/activity/domain/entities/activity_state.dart';

class StepCounterWidget extends StatelessWidget {
  const StepCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityBlocState>(
      builder: (context, state) {
        final data = state is ActivityTracking ? state.current : null;
        final steps = data?.stepCount ?? 0;
        final km = data?.distanceKm ?? 0.0;
        final cal = data?.calories ?? 0.0;
        final time = data?.duration ?? Duration.zero;
        final isFall = state is FallAlert;

        final config = _getConfig(state);

        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(config.icon, size: 50, color: config.color),
                Text(
                  config.label.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: config.color,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  '$steps',
                  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                const Text('PASOS', style: TextStyle(color: Colors.grey)),
                const Divider(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem("KM", km.toStringAsFixed(2)),
                    _buildStatItem("KCAL", cal.toStringAsFixed(0)),
                    _buildStatItem("TIEMPO", _formatDuration(time)),
                  ],
                ),
                // ✅ Sin botón — el control está en ActivityPage
                if (isFall)
                  const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      '⚠️ Caída detectada',
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  ({IconData icon, Color color, String label}) _getConfig(ActivityBlocState state) {
    if (state is FallAlert) {
      return (icon: Icons.warning_amber_rounded, color: Colors.red, label: "¡Caída!");
    }
    if (state is ActivityTracking) {
      return switch (state.current.type) {
        UserActivityType.running    => (icon: Icons.directions_run,    color: Colors.redAccent, label: "Corriendo"),
        UserActivityType.walking    => (icon: Icons.directions_walk,   color: Colors.blue,      label: "Caminando"),
        UserActivityType.stationary => (icon: Icons.accessibility_new, color: Colors.green,     label: "En reposo"),
        UserActivityType.unknown    => (icon: Icons.help_outline,      color: Colors.amber,     label: "Analizando"),
      };
    }
    return (icon: Icons.pause_circle_outline, color: Colors.grey, label: "Detenido");
  }
}