import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/result_leaderboard_item.dart';

class ResultsLeaderboard extends StatelessWidget {
  const ResultsLeaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: playersModel.playersList.length,
      itemBuilder: (context, index) {
        return ResultLeaderboardItem(player: playersModel.playersList[index]);
      },
    );
  }
}
