import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/custom_timer.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/vote_grid_view.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/vote_header.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class VoteRevealWidget extends StatelessWidget {
  const VoteRevealWidget({super.key, required this.players, required this.votingPlayer});

  final List<PlayerModel> players;
  final PlayerModel votingPlayer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomTimer(
              startingTime: TimeService.playersVotingTime,
              onFinish: () => context.gameStartCubit.resetTime(),
            ),
          ),
          VoteHeader(votingPlayer: votingPlayer),
          VoteGridView(
            players: players,
          ),
        ],
      ),
    );
  }
}
