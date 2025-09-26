import 'package:just_audio/just_audio.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';

abstract class SoundService {
  static final AudioPlayer _player = AudioPlayer();
  static final double _defaultVolume = 0.7;
  static const _volumeKey = 'volumeKey';

  static double get volume => applicationBox.get(_volumeKey, defaultValue: _defaultVolume);

  static Future<void> play(String soundPath) async {
    await _player.setVolume(volume);
    await _player.setAsset(soundPath);
    await _player.play();
  }

  static Future<double> setVolume(double newVolume) async {
    await applicationBox.put(_volumeKey, newVolume);
    await _player.setVolume(newVolume);
    return volume;
  }
}
