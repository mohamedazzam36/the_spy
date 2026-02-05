import 'package:hive/hive.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';

abstract class TimeService {
  static const String _hasTimerKey = 'hasTimerKey';
  static const String _kPlayersVotingTime = 'playersVotingTime';
  static const String _kSpysVotingTime = 'spysVotingTime';
  static final int _playersVotingDefaultTime = playersTimes[2];
  static final int _spysVotingDefaultTime = spysTimes[3];

  static final List<int> playersTimes = const [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60];
  static final List<int> spysTimes = const [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60];

  static bool get hasTimer => getIt<Box<dynamic>>().get(_hasTimerKey, defaultValue: true);

  static Future<void> setTimerState(bool isTimerActive) async {
    await getIt<Box<dynamic>>().put(_hasTimerKey, isTimerActive);
  }

  static Future<void> setPlayersVotingTime(int seconds) async {
    await getIt<Box<dynamic>>().put(_kPlayersVotingTime, seconds);
  }

  static Future<void> setSpysVotingTime(int seconds) async {
    await getIt<Box<dynamic>>().put(_kSpysVotingTime, seconds);
  }

  static int get playersVotingTime =>
      getIt<Box<dynamic>>().get(_kPlayersVotingTime, defaultValue: _playersVotingDefaultTime);

  static int get spysVotingTime =>
      getIt<Box<dynamic>>().get(_kSpysVotingTime, defaultValue: _spysVotingDefaultTime);
}
