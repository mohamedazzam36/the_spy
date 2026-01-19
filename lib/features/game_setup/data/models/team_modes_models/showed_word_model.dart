import 'package:the_spy/features/players/data/models/player_model.dart';

class ShowedWordPair {
  final PlayerModel player;
  final String showedWord;
  final int teamId;

  const ShowedWordPair({required this.player, required this.showedWord, required this.teamId});
}
