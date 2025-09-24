import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class LeaderboardService {
  static List<PlayerModel> fetchLeaderboard() {
    List<PlayerModel> playersList = leaderboardBox.keys.map(
      (e) {
        return PlayerModel(name: e, score: leaderboardBox.get(e, defaultValue: 0)!);
      },
    ).toList();

    return GameLogicService.getSortedPlayersList(playersList);
  }

  static Future<void> updateLeaderBoard() async {
    for (int i = 0; i < playersModel.playersList.length; i++) {
      PlayerModel player = playersModel.playersList[i];
      int newScore = player.score + leaderboardBox.get(player.name, defaultValue: 0)!;
      await leaderboardBox.put(player.name, newScore);
    }
  }

  static void deleteLeaderBoard() {
    leaderboardBox.clear();
  }
}
