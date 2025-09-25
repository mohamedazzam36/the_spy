import 'package:the_spy/core/service_locator/service_locator.dart';

abstract class TimeService {
  static const String _kPlayersVotingTime = 'playersVotingTime';
  static const String _kSpysVotingTime = 'spysVotingTime';
  static final int _playersVotingDefaultTime = 10;
  static final int _spysVotingDefaultTime = 5;

  static Future<void> setPlayersVotingTime(int seconds) async {
    await applicationBox.put(_kPlayersVotingTime, seconds);
  }

  static Future<void> setSpysVotingTime(int seconds) async {
    await applicationBox.put(_kSpysVotingTime, seconds);
  }

  static int get playersVotingTime {
    return applicationBox.get(_kPlayersVotingTime, defaultValue: _playersVotingDefaultTime);
  }

  static int get spysVotingTime {
    return applicationBox.get(_kSpysVotingTime, defaultValue: _spysVotingDefaultTime);
  }
}
