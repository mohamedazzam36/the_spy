import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class NormalModeSettings {
  static late String playersShowedWord, spysShowedWord;
  static List<PlayerModel> spysList = [];
  static late List<String> playersCategoryWords;
  static late int numOfSpys;
}

abstract class TeamsModeSettings {
  static List<TeamModel> teamsList = [];
  static late int numOfTeams;
}
