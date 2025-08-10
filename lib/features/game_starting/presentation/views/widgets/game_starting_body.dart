import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_player_reveal_widget.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_questions_reveal_widget.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_word_reveal_widget.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

class GameStartingBody extends StatefulWidget {
  const GameStartingBody({super.key});

  @override
  State<GameStartingBody> createState() => _GameStartingBodyState();
}

class _GameStartingBodyState extends State<GameStartingBody> {
  @override
  void initState() {
    initGameStarting();
    for (var element in context.playersGameModeModel.spysList) {
      log(element.name);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayersCubit, PlayersState>(
      buildWhen: (previous, current) => current.gameStartingStates(),
      builder: (context, state) {
        if (state is PlayerReveal) {
          return CustomPlayerRevealWidget(
            player: state.player,
            onPressed: () => accessPlayerCubit(context).switchBetweenPlayersAndWord(),
          );
        } else if (state is WordReveal) {
          return CustomWordRevealWidget(
            wordName: state.showedWord,
            onPressed: () => accessPlayerCubit(context).switchBetweenPlayersAndWord(),
          );
        } else {
          return CustomQuestionsRevealWidget(
            onPressed: () {},
            askingPlayer: 'محمد',
            askedPlayer: 'احمد',
          );
        }
      },
    );
  }

  void initGameStarting() {
    accessPlayerCubit(context).startGame();
    context.playersGameModeModel.currentMode.setGameStarting(context);
  }
}
