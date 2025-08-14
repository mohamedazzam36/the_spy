import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class LeaderboardService {
  // static ({List<dynamic> playersName, List<int> playersScore}) fetchLeaderboard() {
  //   return (
  //     playersName: leaderboardBox.keys.toList(),
  //     playersScore: leaderboardBox.values.toList(),
  //   );
  // }

  static void updateLeaderBoard() {
    for (int i = 0; i < playersModel.playersList.length; i++) {
      PlayerModel player = playersModel.playersList[i];
      int newScore = player.score + leaderboardBox.get(player.name, defaultValue: 0)!;
      leaderboardBox.put(player.name, newScore);
    }
  }

  static void deleteLeaderBoard() {
    leaderboardBox.clear();
  }
}
