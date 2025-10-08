import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class RadioMangerProvider extends ChangeNotifier {
  late AudioPlayer _player;
  String? _currentPlayingUrl;
  late bool _isPlaying;
  double _currentVolume = 2;

  String? get currentPlayingUrl => _currentPlayingUrl;
  bool? get isPlaying => _isPlaying ;
  double? get currentVolume => _currentVolume;
  RadioMangerProvider() {
    _player = AudioPlayer();
    _player.playerStateStream.listen((state) {
      _isPlaying = state.playing;
      notifyListeners();
    });
  }

  //play
  Future<void> play(String url) async {
    if (_currentPlayingUrl == url) {
      if (_isPlaying) {
        await _player.pause();
      } else {
        await _player.play();
      }
    } else {
      await _player.stop();
      _currentPlayingUrl = url;
      await _player.setUrl(url);
      await _player.play();
    }
  }

  Future<void> stop(String url) async {
    if (_currentPlayingUrl == url) {
      await _player.stop();
      _currentPlayingUrl = null;
      notifyListeners();
    }
  }

  Future<void> mute(String url, double volume) async {
    if (_currentPlayingUrl == url) {
      await _player.setVolume(volume);
      _currentVolume = volume;
      notifyListeners();
    }
  }
}
