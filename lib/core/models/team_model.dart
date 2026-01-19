import 'package:the_spy/core/models/teams_player_model.dart';

class TeamModel {
  int score = 0;
  late ({int id, String shownWord}) opponentTeamInfo;
  final int id;
  late String showedWord;
  List<TeamsPlayerModel> playersDetails = [];
  late List<String> votingWords;

  TeamModel({required this.id});
}
