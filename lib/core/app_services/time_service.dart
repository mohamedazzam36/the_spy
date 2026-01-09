import 'package:the_spy/core/service_locator/service_locator.dart';

abstract class TimeService {
  static const String _hasTimerKey = 'hasTimerKey';
  static const String _kPlayersVotingTime = 'playersVotingTime';
  static const String _kSpysVotingTime = 'spysVotingTime';
  static final int _playersVotingDefaultTime = playersTimes[2];
  static final int _spysVotingDefaultTime = spysTimes[3];

  static final List<int> playersTimes = const [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60];
  static final List<int> spysTimes = const [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60];

  static bool get hasTimer => applicationBox.get(_hasTimerKey, defaultValue: true);

  static Future<void> setTimerState(bool isTimerActive) async {
    await applicationBox.put(_hasTimerKey, isTimerActive);
  }

  static Future<void> setPlayersVotingTime(int seconds) async {
    await applicationBox.put(_kPlayersVotingTime, seconds);
  }

  static Future<void> setSpysVotingTime(int seconds) async {
    await applicationBox.put(_kSpysVotingTime, seconds);
  }

  static int get playersVotingTime =>
      applicationBox.get(_kPlayersVotingTime, defaultValue: _playersVotingDefaultTime);

  static int get spysVotingTime =>
      applicationBox.get(_kSpysVotingTime, defaultValue: _spysVotingDefaultTime);
}
