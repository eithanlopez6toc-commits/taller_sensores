import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/datasources/activity_repository.dart';
import '../../../../core/database/database.dart';
import '../../../../../injection_container.dart';
import 'package:fitness_tracker/features/auth/tracking/presentation/widgets/route_map_widget.dart';
import 'package:fitness_tracker/features/auth/tracking/domain/entities/location_point.dart';

class HistorialPage extends StatefulWidget {
  final void Function(VoidCallback reload)? onRegisterReload;
  const HistorialPage({super.key, this.onRegisterReload});

  @override
  State<HistorialPage> createState() => _HistorialPageState();
}

class _HistorialPageState extends State<HistorialPage> {
  final ActivityRepository _repository = sl<ActivityRepository>();
  List<ActivityRecord> _records = [];
  ActivityStats?       _stats;
  bool                 _isLoading = false;

  // ✅ Mapa de títulos/descripciones personalizados, indexados por id de registro
  Map<int, String> _customTitles = {};
  Map<int, String> _customDescs  = {};

  static const _purple      = Color(0xFF6C47FF);
  static const _purpleLight = Color(0xFFEDE9FF);
  static const _bg          = Color(0xFFF7F6FB);
  static const _textDark    = Color(0xFF1A1A2E);
  static const _textGrey    = Color(0xFF8F8FA0);

  @override
  void initState() {
    super.initState();
    widget.onRegisterReload?.call(loadAllRecords);
    loadAllRecords();
  }

  Future<void> loadAllRecords() async {
    setState(() => _isLoading = true);
    try {
      final records = await _repository.getAllActivities();
      final stats   = await _repository.getStats();
      await _loadCustomNames(records); // ✅ carga nombres personalizados
      if (mounted) setState(() { _records = records; _stats = stats; });
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  // ✅ Carga todos los títulos/descripciones guardados para los registros actuales
  Future<void> _loadCustomNames(List<ActivityRecord> records) async {
    final prefs = await SharedPreferences.getInstance();
    final titles = <int, String>{};
    final descs  = <int, String>{};
    for (final r in records) {
      final t = prefs.getString('activity_title_${r.id}');
      final d = prefs.getString('activity_desc_${r.id}');
      if (t != null) titles[r.id] = t;
      if (d != null) descs[r.id]  = d;
    }
    _customTitles = titles;
    _customDescs  = descs;
  }

  Future<void> _deleteRecord(int id) async {
    await _repository.deleteActivity(id);
    // ✅ Limpia también el nombre personalizado guardado, si existía
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('activity_title_$id');
    await prefs.remove('activity_desc_$id');
    loadAllRecords();
  }

  Future<void> _confirmDeleteAll() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('¿Eliminar todo?'),
        content: const Text('Esta acción no se puede deshacer.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancelar')),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Eliminar', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
    if (ok == true) {
      // ✅ Limpia todos los nombres personalizados guardados
      final prefs = await SharedPreferences.getInstance();
      for (final r in _records) {
        await prefs.remove('activity_title_${r.id}');
        await prefs.remove('activity_desc_${r.id}');
      }
      await _repository.deleteAllActivities();
      loadAllRecords();
    }
  }

  void _openDetail(ActivityRecord record, int index) {
    Navigator.push(context, MaterialPageRoute<void>(
      builder: (_) => _ActivityDetailPage(
        record: record,
        sessionNumber: _records.length - index, // sesión más reciente = número mayor
        repository: _repository,
        onUpdated: loadAllRecords,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _purple,
        title: const Text('Historial', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
        actions: [
          IconButton(onPressed: loadAllRecords, icon: const Icon(Icons.refresh, color: Colors.white)),
          if (_records.isNotEmpty)
            IconButton(onPressed: _confirmDeleteAll,
              icon: const Icon(Icons.delete_sweep_outlined, color: Colors.white), tooltip: 'Eliminar todo'),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: _purple))
          : _records.isEmpty ? _buildEmpty()
          : CustomScrollView(slivers: [
              SliverToBoxAdapter(child: _buildStatsSection()),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                sliver: SliverList(delegate: SliverChildBuilderDelegate(
                  (context, i) => _buildActivityCard(_records[i], i),
                  childCount: _records.length,
                )),
              ),
            ]),
    );
  }

  Widget _buildEmpty() => Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(color: _purpleLight, shape: BoxShape.circle),
        child: const Icon(Icons.directions_walk, size: 48, color: _purple)),
      const SizedBox(height: 20),
      const Text('Sin actividades aún', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: _textDark)),
      const SizedBox(height: 8),
      const Text('Inicia el monitoreo para\nver tu historial aquí',
        textAlign: TextAlign.center, style: TextStyle(color: _textGrey, fontSize: 14)),
    ]),
  );

  Widget _buildStatsSection() {
    final s = _stats!;
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [_purple, Color(0xFF9B70FF)],
          begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(color: _purple.withValues(alpha: 0.3), blurRadius: 16, offset: const Offset(0, 6))],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('${s.totalActivities} sesiones registradas',
          style: const TextStyle(color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w500)),
        const SizedBox(height: 16),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _statPill(Icons.directions_walk, _fmt(s.totalSteps), 'pasos'),
          _statPill(Icons.straighten, '${s.totalDistanceKm.toStringAsFixed(1)} km', 'distancia'),
          _statPill(Icons.local_fire_department, s.totalCaloriesBurned.toStringAsFixed(0), 'kcal'),
        ]),
      ]),
    );
  }

  Widget _statPill(IconData icon, String value, String label) => Column(children: [
    Container(padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(12)),
      child: Icon(icon, color: Colors.white, size: 20)),
    const SizedBox(height: 6),
    Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
    Text(label, style: const TextStyle(color: Colors.white70, fontSize: 11)),
  ]);

  Widget _buildActivityCard(ActivityRecord record, int index) {
    final config      = _activityConfig(record.type);
    final points      = record.points;
    final hasRoute    = points.length >= 2;
    final sessionNum  = _records.length - index;

    // ✅ Usa el título/descripción personalizado si existe, si no el valor por defecto
    final title = _customTitles[record.id] ?? 'Rutina $sessionNum';
    final desc  = _customDescs[record.id]  ?? record.label;

    return GestureDetector(
      onTap: () => _openDetail(record, index),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.06), blurRadius: 10, offset: const Offset(0, 4))]),
        child: Column(children: [
          // Mini mapa
          if (hasRoute)
            ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: SizedBox(height: 110, child: _MiniRouteMap(points: points))),

          Padding(padding: const EdgeInsets.all(14), child: Row(children: [
            Container(padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: config.color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(14)),
              child: Icon(config.icon, color: config.color, size: 22)),
            const SizedBox(width: 12),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // ✅ Título personalizado (o por defecto)
              Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: _textDark)),
              const SizedBox(height: 2),
              // ✅ Descripción personalizada + fecha
              Text('$desc · ${record.formattedDate}',
                style: const TextStyle(fontSize: 12, color: _textGrey)),
            ])),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              _badge('${record.stepCount} pasos', _purple),
              const SizedBox(height: 4),
              Text(_formatStepCounterTime(record.durationSeconds), style: const TextStyle(fontSize: 12, color: _textGrey)),
            ]),
            const SizedBox(width: 4),
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Color(0xFFCCC5FF), size: 20),
              onPressed: () => _deleteRecord(record.id),
              padding: EdgeInsets.zero, constraints: const BoxConstraints()),
          ])),

          Padding(padding: const EdgeInsets.fromLTRB(14, 0, 14, 14), child: Row(children: [
            _quickStat(Icons.straighten, '${record.distanceKm.toStringAsFixed(2)} km'),
            const SizedBox(width: 12),
            _quickStat(Icons.local_fire_department, '${record.caloriesBurned.toStringAsFixed(0)} kcal'),
            const SizedBox(width: 12),
            _quickStat(Icons.speed, '${record.averageSpeed.toStringAsFixed(1)} km/h'),
            if (hasRoute) ...[
              const SizedBox(width: 12),
              _quickStat(Icons.gps_fixed, '${points.length} puntos', color: _purple),
            ],
          ])),
        ]),
      ),
    );
  }

  Widget _badge(String text, Color color) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
    decoration: BoxDecoration(color: color.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(8)),
    child: Text(text, style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.w600)));

  Widget _quickStat(IconData icon, String text, {Color color = _textGrey}) => Row(children: [
    Icon(icon, size: 13, color: color), const SizedBox(width: 3),
    Text(text, style: TextStyle(fontSize: 11, color: color))]);

  ({IconData icon, Color color}) _activityConfig(ActivityRecordType type) => switch (type) {
    ActivityRecordType.walking    => (icon: Icons.directions_walk,   color: Colors.blue),
    ActivityRecordType.running    => (icon: Icons.directions_run,    color: Colors.redAccent),
    ActivityRecordType.stationary => (icon: Icons.accessibility_new, color: Colors.green),
    ActivityRecordType.unknown    => (icon: Icons.help_outline,      color: Colors.grey),
  };

  String _fmt(int n) => n >= 1000 ? '${(n / 1000).toStringAsFixed(1)}k' : n.toString();
}

String _formatStepCounterTime(int seconds) {
  final duration = Duration(seconds: seconds);
  final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
  final sec = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
  return '$minutes:$sec';
}

// ─── MINI MAPA ───────────────────────────────────────────────────────────────

class _MiniRouteMap extends StatelessWidget {
  final List<LocationPoint> points;
  const _MiniRouteMap({required this.points});

  @override
  Widget build(BuildContext context) {
    if (points.length < 2) return const SizedBox.shrink();
    return Container(
      color: Colors.grey.shade100,
      child: CustomPaint(
        painter: RoutePainter(points: points),
        child: const SizedBox.expand(),
      ),
    );
  }
}

// ─── DETALLE + EDITAR ────────────────────────────────────────────────────────

class _ActivityDetailPage extends StatefulWidget {
  final ActivityRecord     record;
  final int                sessionNumber;
  final ActivityRepository repository;
  final VoidCallback       onUpdated;

  const _ActivityDetailPage({
    required this.record,
    required this.sessionNumber,
    required this.repository,
    required this.onUpdated,
  });

  @override
  State<_ActivityDetailPage> createState() => _ActivityDetailPageState();
}

class _ActivityDetailPageState extends State<_ActivityDetailPage> {
  static const _purple = Color(0xFF6C47FF);

  late ActivityRecord _record;
  bool _editing = false;

  late TextEditingController _titleCtrl;
  late TextEditingController _descCtrl;

  @override
  void initState() {
    super.initState();
    _record    = widget.record;
    _titleCtrl = TextEditingController(text: 'Rutina ${widget.sessionNumber}');
    _descCtrl  = TextEditingController(text: _record.label);
    _loadCustomNames(); // ✅ carga lo previamente guardado, si existe
  }

  @override
  void dispose() {
    _titleCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  // ✅ Carga título/descripción guardados para este registro específico
  Future<void> _loadCustomNames() async {
    final prefs = await SharedPreferences.getInstance();
    final title = prefs.getString('activity_title_${_record.id}');
    final desc  = prefs.getString('activity_desc_${_record.id}');
    if (mounted) {
      setState(() {
        if (title != null) _titleCtrl.text = title;
        if (desc  != null) _descCtrl.text  = desc;
      });
    }
  }

  // ✅ Ahora sí persiste los cambios en almacenamiento local
  Future<void> _saveChanges() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('activity_title_${_record.id}', _titleCtrl.text);
    await prefs.setString('activity_desc_${_record.id}',  _descCtrl.text);

    setState(() => _editing = false);
    widget.onUpdated(); // recarga el historial para reflejar el cambio en la lista
    if (mounted) ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Nombre actualizado'), backgroundColor: _purple));
  }

  @override
  Widget build(BuildContext context) {
    final points   = _record.points;
    final hasRoute = points.length >= 2;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F6FB),
      appBar: AppBar(
        backgroundColor: _purple,
        foregroundColor: Colors.white,
        title: _editing
            ? TextField(
                controller: _titleCtrl,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(border: InputBorder.none),
              )
            : Text(_titleCtrl.text,
                style: const TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0,
        actions: [
          if (_editing)
            IconButton(onPressed: _saveChanges, icon: const Icon(Icons.check))
          else
            IconButton(onPressed: () => setState(() => _editing = true),
              icon: const Icon(Icons.edit_outlined)),
        ],
      ),
      body: ListView(children: [
        if (hasRoute)
          SizedBox(height: 260, child: _MiniRouteMap(points: points))
        else
          Container(height: 120, color: const Color(0xFFEDE9FF),
            child: const Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.location_off, color: Color(0xFF9B70FF), size: 32),
              SizedBox(height: 6),
              Text('Sin datos GPS para esta sesión',
                style: TextStyle(color: Color(0xFF9B70FF), fontSize: 13)),
            ]))),

        Padding(padding: const EdgeInsets.all(16), child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [

          if (_editing)
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14),
                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 8, offset: const Offset(0, 3))]),
              child: TextField(
                controller: _descCtrl,
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  labelText: 'Descripción',
                  labelStyle: TextStyle(fontSize: 11, color: Color(0xFF8F8FA0)),
                  border: InputBorder.none,
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(_descCtrl.text,
                style: const TextStyle(color: Color(0xFF8F8FA0), fontSize: 13)),
            ),

          Text(_record.formattedDate,
            style: const TextStyle(color: Color(0xFF8F8FA0), fontSize: 12)),
          const SizedBox(height: 16),

          _buildReadGrid(),

          if (hasRoute) ...[
            const SizedBox(height: 20),
            _buildGpsStats(points),
          ],

          if (_editing) ...[
            const SizedBox(height: 20),
            SizedBox(width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _saveChanges,
                icon: const Icon(Icons.save_outlined),
                label: const Text('Guardar'),
                style: ElevatedButton.styleFrom(backgroundColor: _purple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              )),
            const SizedBox(height: 8),
            Center(child: TextButton(
              onPressed: () => setState(() => _editing = false),
              child: const Text('Cancelar', style: TextStyle(color: Color(0xFF8F8FA0))))),
          ],
        ])),
      ]),
    );
  }

  Widget _buildReadGrid() => GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    mainAxisSpacing: 12, crossAxisSpacing: 12,
    childAspectRatio: 1.6,
    children: [
      _detailCard('Pasos',      '${_record.stepCount}',                              Icons.directions_walk,      Colors.blue),
      _detailCard('Distancia',  '${_record.distanceKm.toStringAsFixed(2)} km',       Icons.straighten,           Colors.green),
      _detailCard('Calorías',   '${_record.caloriesBurned.toStringAsFixed(0)} kcal', Icons.local_fire_department, Colors.orange),
      _detailCard('Duración',   _formatStepCounterTime(_record.durationSeconds),      Icons.timer,                _purple),
      _detailCard('Vel. media', '${_record.averageSpeed.toStringAsFixed(1)} km/h',   Icons.speed,                Colors.teal),
      _detailCard('Tipo',       _record.label,                                       Icons.category,             Colors.indigo),
    ],
  );

  Widget _detailCard(String label, String value, IconData icon, Color color) => Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16),
      boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05),
        blurRadius: 8, offset: const Offset(0, 3))]),
    child: Row(children: [
      Container(padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(10)),
        child: Icon(icon, color: color, size: 18)),
      const SizedBox(width: 10),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold,
          fontSize: 14, color: Color(0xFF1A1A2E))),
        Text(label, style: const TextStyle(fontSize: 11, color: Color(0xFF8F8FA0))),
      ])),
    ]),
  );

  Widget _buildGpsStats(List<dynamic> points) {
    double maxSpeed = 0, totalAlt = 0;
    for (final p in points) {
      if ((p.speed as double) > maxSpeed) maxSpeed = p.speed as double;
      totalAlt += p.altitude as double;
    }
    final avgAlt = totalAlt / points.length;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 8, offset: const Offset(0, 3))]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Row(children: [
          Icon(Icons.gps_fixed, color: _purple, size: 18), SizedBox(width: 6),
          Text('Datos GPS', style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 14, color: Color(0xFF1A1A2E))),
        ]),
        const SizedBox(height: 14),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _gpsStat('Vel. máx.', '${(maxSpeed * 3.6).toStringAsFixed(1)} km/h', Icons.speed),
          _gpsStat('Altitud',   '${avgAlt.toStringAsFixed(0)} m',               Icons.terrain),
          _gpsStat('Puntos',    '${points.length}',                              Icons.location_on),
        ]),
      ]),
    );
  }

  Widget _gpsStat(String label, String value, IconData icon) => Column(children: [
    Icon(icon, color: _purple, size: 20), const SizedBox(height: 4),
    Text(value, style: const TextStyle(fontWeight: FontWeight.bold,
      fontSize: 14, color: Color(0xFF1A1A2E))),
    Text(label, style: const TextStyle(fontSize: 11, color: Color(0xFF8F8FA0))),
  ]);
}