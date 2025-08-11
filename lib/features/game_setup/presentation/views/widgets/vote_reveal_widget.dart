import 'package:flutter/material.dart';
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
          VoteHeader(votingPlayer: votingPlayer),
          VoteGridView(
            players: players,
          ),
        ],
      ),
    );
  }
}
