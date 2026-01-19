import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/custom_timer.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/vote_grid_view.dart';
import 'package:the_spy/features/game_setup/presentation/views/vote_header.dart';

import 'package:the_spy/features/players/data/models/player_model.dart';

class VoteRevealWidget extends StatelessWidget {
  const VoteRevealWidget({super.key, required this.players, required this.votingPlayer});

  final List<PlayerModel> players;
  final PlayerModel votingPlayer;

  @override
  Widget build(BuildContext context) {
    return MainBackgroundContainer(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: TimeService.hasTimer
                ? CustomTimer(
                    startingTime: TimeService.playersVotingTime,
                    onFinish: () => context.normalGameStartCubit.endTime(),
                  )
                : const SizedBox(),
          ),
          SliverToBoxAdapter(child: VoteHeader(votingPlayer: votingPlayer)),
          VoteGridView(
            players: players,
          ),
        ],
      ),
    );
  }
}
