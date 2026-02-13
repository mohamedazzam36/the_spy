import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/constants/ui_constants.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/normal_modes/normal_game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/vote_grid_view_item.dart';
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
    return BlocListener<NormalGameSetupCubit, NormalGameSetupState>(
      listener: (context, state) {
        if (state is TimeIsUp) {
          context.normalGameStartCubit.getNextPlayerVote([]);
          votedPlayers.clear();
          selectedIndices.clear();
        }
      },
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 40,
          mainAxisSpacing: 20,
          childAspectRatio: 1.7,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.players.length,
        itemBuilder: (context, index) {
          return VoteGridViewItem(
            playerName: widget.players[index],
            isSelected: selectedIndices.contains(index),
            iconPath: UiConstants.playersIconPaths[index % UiConstants.playersIconPaths.length],
            onTap: () {
              tapped(index, context);
            },
          );
        },
      ),
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

    if (selectedIndices.length == NormalModeSettings.spysList.length) {
      context.normalGameStartCubit.getNextPlayerVote(List.from(votedPlayers));
      votedPlayers.clear();
      selectedIndices.clear();
    }
  }
}
