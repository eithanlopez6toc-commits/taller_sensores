import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  final FlutterTts _tts = FlutterTts();
  bool _isInitialized = false;

  Future<void> init() async {
    if (_isInitialized) return;
    await _tts.setLanguage('es-ES');
    await _tts.setSpeechRate(0.5);
    await _tts.setVolume(1.0);
    _isInitialized = true;
  }

  Future<void> speak(String text) async {
    if (text.isEmpty) return;
    // ✅ No hacer await al stop para no bloquear
    _tts.stop();
    await _tts.speak(text);
  }

  Future<void> stop() async {
    await _tts.stop();
  }

  void dispose() {
    _tts.stop();
  }
}