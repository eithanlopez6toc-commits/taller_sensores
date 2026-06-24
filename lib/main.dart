import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'features/auth/tracking/presentation/widgets/route_map_widget.dart';
import 'features/activity/presentation/bloc/activity_bloc.dart';
import 'features/activity/presentation/pages/activity_page.dart';
import 'features/activity/presentation/pages/historial_page.dart';
import 'features/auth/steps/presentation/widgets/step_counter_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => sl<AuthBloc>()),
        BlocProvider<ActivityBloc>(create: (_) => sl<ActivityBloc>()),
      ],
      child: MaterialApp(
        title: 'Fitness Tracker',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6366F1)),
          useMaterial3: true,
        ),
        home: const AuthWrapper(),
      ),
    );
  }
}

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});
  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  bool _isAuthenticated = false;
  @override
  Widget build(BuildContext context) {
    if (_isAuthenticated) return const HomePage();
    return LoginPage(onAuthSuccess: () => setState(() => _isAuthenticated = true));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  VoidCallback? _reloadHistorial;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ActivityBloc, ActivityBlocState>(
      // ✅ Se dispara justo cuando una sesión termina de guardarse
      // (ActivityTracking -> ActivityInitial, que ocurre DESPUÉS del await _saveSession())
      listenWhen: (previous, current) =>
          previous is ActivityTracking && current is ActivityInitial,
      listener: (context, state) {
        _reloadHistorial?.call();
      },
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: [
            const _HomeTab(),
            const ActivityPage(),
            HistorialPage(
              onRegisterReload: (fn) => _reloadHistorial = fn,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            // Se mantiene como refresco manual extra (ej. tras borrar registros)
            if (index == 2) _reloadHistorial?.call();
            setState(() => _currentIndex = index);
          },
          selectedItemColor: const Color(0xFF6366F1),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.accessibility_new_rounded), label: 'Detector'),
            BottomNavigationBarItem(icon: Icon(Icons.history_rounded), label: 'Historial'),
          ],
        ),
      ),
    );
  }
}

class _HomeTab extends StatelessWidget {
  const _HomeTab();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Tracker'),
        backgroundColor: const Color(0xFF6366F1),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            StepCounterWidget(),
            SizedBox(height: 16),
            RouteMapWidget(),
          ],
        ),
      ),
    );
  }
}