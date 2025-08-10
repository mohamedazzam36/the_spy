import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';

class PlayersRepoImpl implements PlayersRepo {
  @override
  List<PlayerModel> fetchPlayersData() {
    final Box<PlayerModel> playersList = getIt.get<Box<PlayerModel>>();
    return playersList.values.toList();
  }

  @override
  void addPlayer(PlayerModel player) {
    final Box<PlayerModel> playersList = getIt.get<Box<PlayerModel>>();
    playersList.add(player);
  }
}
