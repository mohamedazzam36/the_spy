import 'package:hive/hive.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class LeaderboardService {
  LeaderboardService._();

  static List<PlayerModel> fetchSortedLeaderboard() {
    List<PlayerModel> playersList = getIt<Box<int>>().keys.map(
      (e) {
        return PlayerModel(name: e, score: getIt<Box<int>>().get(e, defaultValue: 0)!);
      },
    ).toList();

    return GameLogicService.getSortedPlayersList(playersList);
  }

  static Future<void> updateLeaderBoard() async {
    for (int i = 0; i < AppServices.playersList.length; i++) {
      PlayerModel player = AppServices.playersList[i];
      int newScore = player.score + getIt<Box<int>>().get(player.name, defaultValue: 0)!;
      await getIt<Box<int>>().put(player.name, newScore);
    }
  }

  static Future<void> deletePlayer(PlayerModel player) async {
    await getIt<Box<int>>().delete(player.name);
  }
}
