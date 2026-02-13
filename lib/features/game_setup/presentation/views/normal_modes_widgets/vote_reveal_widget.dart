import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/vote_reveal_card.dart';
import 'package:the_spy/features/game_setup/presentation/views/round_title_widget.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class VoteRevealWidget extends StatelessWidget {
  const VoteRevealWidget({super.key, required this.players, required this.votingPlayer});

  final List<PlayerModel> players;
  final PlayerModel votingPlayer;

  @override
  Widget build(BuildContext context) {
    return MainAppStructure(
      appBarTitle: AppServices.currentCategory.name,
      floatingAppBar: false,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const RoundTitleWidget(title: 'votingRound'),
                  const SizedBox(height: 24),
                  VoteRevealCard(
                    players: players,
                    votingPlayer: votingPlayer,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
