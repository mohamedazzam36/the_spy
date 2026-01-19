import 'package:the_spy/features/players/data/models/player_model.dart';

class TeamsPlayerModel {
  final PlayerModel player;
  final int id;
  int score = 0;

  TeamsPlayerModel({required this.player, required this.id});
}
