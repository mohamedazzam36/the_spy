import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/result_leaderboard_item.dart';

class ResultsLeaderboard extends StatelessWidget {
  const ResultsLeaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: AppServices.playersList.length,
      itemBuilder: (context, index) {
        return ResultLeaderboardItem(
          player: GameLogicService.getSortedPlayersList(AppServices.playersList)[index],
        );
      },
    );
  }
}
