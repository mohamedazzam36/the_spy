import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class PlayersRepo {
  List<PlayerModel> fetchPlayersData();
  void addPlayer(PlayerModel player);
}
