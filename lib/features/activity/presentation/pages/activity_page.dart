
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/activity_bloc.dart';
import '../../domain/entities/activity_state.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  bool _isMonitoring = false;

  // ✅ Eliminado FlutterTts y _lastSpokenActivity — el Bloc ya maneja el audio

  void _toggleMonitoring(bool start) {
    setState(() => _isMonitoring = start);
    context.read<ActivityBloc>().add(start ? ActivityStarted() : ActivityStopped());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detector de Actividad', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 93, 0, 255),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocListener<ActivityBloc, ActivityBlocState>(
        listener: (context, state) {
          // ✅ Solo reacciona a caídas, sin tocar TTS
          if (state is FallAlert) {
            _showFallDialog();
          }
        },
        child: BlocBuilder<ActivityBloc, ActivityBlocState>(
          builder: (context, state) {
            final data = state is ActivityTracking ? state.current : null;
            final km = data?.distanceKm ?? 0.0;
            final cal = data?.calories ?? 0.0;
            final time = data?.duration ?? Duration.zero;
            final config = _getActivityConfig(state);

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildStatItem("KM", km.toStringAsFixed(2)),
                          _buildStatItem("KCAL", cal.toStringAsFixed(0)),
                          _buildStatItem("TIEMPO", _formatDuration(time)),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Icon(config.icon, size: 120, color: config.color),
                  const SizedBox(height: 10),
                  Text(
                    config.label.toUpperCase(),
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: config.color),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () => _toggleMonitoring(!_isMonitoring),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isMonitoring ? Colors.redAccent : Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text(
                        _isMonitoring ? "DETENER MONITOREO" : "INICIAR MONITOREO",
                        style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // ✅ Formato mm:ss en lugar de solo minutos
  String _formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  Widget _buildStatItem(String title, String value) => Column(
        children: [
          Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      );

  ({IconData icon, Color color, String label}) _getActivityConfig(ActivityBlocState state) {
    if (!_isMonitoring) {
      return (icon: Icons.play_circle_fill, color: Colors.grey, label: "Detenido");
    }
    if (state is FallAlert) {
      return (icon: Icons.warning_amber_rounded, color: Colors.red, label: "¡CAÍDA!");
    }
    if (state is ActivityTracking) {
      return switch (state.current.type) {
        UserActivityType.running    => (icon: Icons.directions_run,     color: Colors.redAccent, label: "Corriendo"),
        UserActivityType.walking    => (icon: Icons.directions_walk,    color: Colors.blue,      label: "Caminando"),
        UserActivityType.stationary => (icon: Icons.accessibility_new,  color: Colors.green,     label: "En reposo"),
        UserActivityType.unknown    => (icon: Icons.help_outline,       color: Colors.amber,     label: "Analizando"),
      };
    }
    return (icon: Icons.circle_outlined, color: Colors.grey, label: "...");
  }

  void _showFallDialog() {
    // Evitar mostrar el diálogo si ya está visible
    if (!mounted) return;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('⚠️ ¡Alerta de Impacto!'),
        content: const Text('Se ha detectado una caída. ¿Te encuentras bien?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<ActivityBloc>().add(FallConfirmed());
              // ✅ El TtsService del Bloc habla, no la página
            },
            child: const Text('ESTOY BIEN', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}