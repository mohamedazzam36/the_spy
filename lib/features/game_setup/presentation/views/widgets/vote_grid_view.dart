import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/vote_grid_view_item.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class VoteGridView extends StatefulWidget {
  const VoteGridView({super.key, required this.players});

  final List<PlayerModel> players;

  @override
  State<VoteGridView> createState() => _VoteGridViewState();
}

class _VoteGridViewState extends State<VoteGridView> {
  List<PlayerModel> votedPlayers = [];
  List<int> selectedIndices = [];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: widget.players.length,
      itemBuilder: (context, index) {
        return VoteGridViewItem(
          playerName: widget.players[index],
          isSelected: selectedIndices.contains(index),
          onTap: () {
            tapped(index, context);
          },
        );
      },
    );
  }

  void tapped(int index, BuildContext context) {
    if (!selectedIndices.contains(index)) {
      selectedIndices.add(index);
      votedPlayers.add(widget.players[index]);
    } else {
      selectedIndices.remove(index);
      votedPlayers.remove(widget.players[index]);
    }
    setState(() {});

    if (selectedIndices.length == playersModel.spysList.length) {
      context.gameStartCubit.getNextVote(votedPlayers);
      votedPlayers.clear();
      selectedIndices.clear();
    }
  }
}
