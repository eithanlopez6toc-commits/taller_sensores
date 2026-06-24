import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:fitness_tracker/features/auth/tracking/data/datasources/gps_datasource.dart';
import 'package:fitness_tracker/features/auth/tracking/domain/entities/location_point.dart';
import 'package:fitness_tracker/features/auth/tracking/domain/entities/route.dart' as entity;
import '../../../../../injection_container.dart';

class RouteMapWidget extends StatefulWidget {
  const RouteMapWidget({super.key});
  @override
  State<RouteMapWidget> createState() => _RouteMapWidgetState();
}

class _RouteMapWidgetState extends State<RouteMapWidget> {
  final GpsDataSource _dataSource = sl<GpsDataSource>();
  entity.Route _route = entity.Route();
  bool _isTracking = false;
  bool _hasPermission = false;
  StreamSubscription<LocationPoint>? _subscription;

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  // ✅ Pedir permisos al iniciar
  Future<void> _checkPermissions() async {
    final granted = await _dataSource.requestPermissions();
    if (mounted) setState(() => _hasPermission = granted);
  }

  Future<void> _toggleTracking() async {
    if (_isTracking) {
      await _subscription?.cancel();
      setState(() => _isTracking = false);
    } else {
      // ✅ Verificar permisos antes de iniciar
      if (!_hasPermission) {
        final granted = await _dataSource.requestPermissions();
        if (!granted) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Se necesitan permisos de ubicación')),
            );
          }
          return;
        }
        setState(() => _hasPermission = true);
      }

      setState(() {
        _route = entity.Route();
        _isTracking = true;
      });

      _subscription = _dataSource.locationStream.listen((p) {
        if (_isTracking && mounted) {
          setState(() => _route.addPoint(p));
        }
      });
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "RUTA ACTUAL",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                Chip(
                  label: Text(
                    "${_route.points.length} puntos",
                    style: const TextStyle(fontSize: 12),
                  ),
                  // ✅ withOpacity reemplazado por withAlpha
                  backgroundColor: Colors.indigo.withAlpha(25),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Mapa
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: _route.points.length < 2
                  ? Center(
                      child: Text(
                        _isTracking
                            ? 'Esperando señal GPS...'
                            : 'Inicia la ruta para ver el mapa',
                        style: TextStyle(color: Colors.grey[400], fontSize: 13),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CustomPaint(
                        painter: RoutePainter(points: _route.points),
                        child: const SizedBox.expand(),
                      ),
                    ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: _toggleTracking,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isTracking ? Colors.redAccent : Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  _isTracking ? 'DETENER SEGUIMIENTO' : 'INICIAR RUTA',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoutePainter extends CustomPainter {
  final List<LocationPoint> points;
  RoutePainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    if (points.length < 2) return;

    double minLat = points.map((p) => p.latitude).reduce(math.min);
    double maxLat = points.map((p) => p.latitude).reduce(math.max);
    double minLon = points.map((p) => p.longitude).reduce(math.min);
    double maxLon = points.map((p) => p.longitude).reduce(math.max);

    double latRange = (maxLat - minLat == 0) ? 0.0001 : maxLat - minLat;
    double lonRange = (maxLon - minLon == 0) ? 0.0001 : maxLon - minLon;

    const double padding = 20.0;
    double drawWidth = size.width - (padding * 2);
    double drawHeight = size.height - (padding * 2);

    Offset getOffset(LocationPoint p) {
      double x = padding + ((p.longitude - minLon) / lonRange) * drawWidth;
      double y = size.height - (padding + ((p.latitude - minLat) / latRange) * drawHeight);
      return Offset(x, y);
    }

    // ✅ Línea de ruta
    final path = Path();
    path.moveTo(getOffset(points.first).dx, getOffset(points.first).dy);
    for (int i = 1; i < points.length; i++) {
      path.lineTo(getOffset(points[i]).dx, getOffset(points[i]).dy);
    }

    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.indigo
        ..strokeWidth = 3
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round,
    );

    // ✅ Punto de inicio (verde)
    canvas.drawCircle(
      getOffset(points.first),
      6,
      Paint()..color = Colors.green,
    );

    // ✅ Punto actual (rojo)
    canvas.drawCircle(
      getOffset(points.last),
      6,
      Paint()..color = Colors.red,
    );
  }

  @override
  bool shouldRepaint(covariant RoutePainter oldDelegate) =>
      oldDelegate.points.length != points.length;
}