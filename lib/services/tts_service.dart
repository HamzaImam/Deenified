import 'package:flutter_tts/flutter_tts.dart';

/// Singleton Text-to-Speech service using native device TTS
class TtsService {
  TtsService._();
  static final instance = TtsService._();

  FlutterTts? _tts;
  bool _isInitialized = false;

  /// Initialize the TTS engine (called lazily on first use)
  Future<void> _ensureInitialized() async {
    if (_isInitialized) return;

    _tts = FlutterTts();
    await _tts!.setLanguage('en-US');
    await _tts!.setSpeechRate(0.4); // Slower for clear pronunciation
    await _tts!.setVolume(1.0);
    await _tts!.setPitch(1.0);
    _isInitialized = true;
  }

  /// Pronounce a word or phrase
  Future<void> pronounce(String text) async {
    await _ensureInitialized();
    await _tts!.speak(text);
  }

  /// Stop any ongoing speech
  Future<void> stop() async {
    if (_tts != null) {
      await _tts!.stop();
    }
  }

  /// Dispose the TTS engine
  Future<void> dispose() async {
    if (_tts != null) {
      await _tts!.stop();
      _isInitialized = false;
      _tts = null;
    }
  }
}
