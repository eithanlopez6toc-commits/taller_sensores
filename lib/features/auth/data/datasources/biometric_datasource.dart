import 'package:flutter/foundation.dart';
import 'package:local_auth/local_auth.dart';
import '../../domain/entities/auth_result.dart';

abstract class BiometricDataSource {
  Future<bool> canAuthenticate();
  Future<List<BiometricType>> getAvailableBiometrics();
  Future<AuthResult> authenticate();
}

class BiometricDataSourceImpl implements BiometricDataSource {
  final LocalAuthentication _localAuth = LocalAuthentication();

  static const String _reason =
      'Autentica con huella dactilar para acceder a Fitness Tracker';

  @override
  Future<bool> canAuthenticate() async {
    try {
      return await _localAuth.canCheckBiometrics;
    } catch (e) {
      debugPrint('❌ Error verificando soporte biométrico: $e');
      return false;
    }
  }

  @override
  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _localAuth.getAvailableBiometrics();
    } catch (e) {
      debugPrint('❌ Error obteniendo biométricos disponibles: $e');
      return [];
    }
  }

  @override
  Future<AuthResult> authenticate() async {
    try {
      final isAuthenticated = await _localAuth.authenticate(
        localizedReason: _reason,
        // ✅ local_auth 3.x: parámetros directos, sin options
        biometricOnly: false,
        sensitiveTransaction: true,
        persistAcrossBackgrounding: true, // equivale a stickyAuth
      );

      return AuthResult(
        success: isAuthenticated,
        message: isAuthenticated
            ? 'Autenticación exitosa ✓'
            : 'Autenticación cancelada',
      );
    } on Exception catch (e) {
      return AuthResult(
        success: false,
        message: 'Error de autenticación: ${e.toString()}',
      );
    }
  }
}