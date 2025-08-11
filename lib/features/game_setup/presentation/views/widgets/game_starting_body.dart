import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/custom_player_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/custom_questions_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/custom_word_reveal_widget.dart';

class GameSetupBody extends StatefulWidget {
  const GameSetupBody({super.key});

  @override
  State<GameSetupBody> createState() => _GameSetupBodyState();
}

class _GameSetupBodyState extends State<GameSetupBody> {
  @override
  void initState() {
    context.gameStartCubit.startGame();
    for (var element in playersModel.spysList) {
      log(element.name);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameSetupCubit, GameSetupState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case PlayerReveal():
            return CustomPlayerRevealWidget(
              player: state.player,
              onPressed: () => context.gameStartCubit.switchBetweenPlayersAndWord(),
            );
          case WordReveal():
            return CustomWordRevealWidget(
              wordName: state.showedWord,
              onPressed: () => context.gameStartCubit.switchBetweenPlayersAndWord(),
            );
          case QuestionsRound():
            return CustomQuestionsRevealWidget(
              askedPlayer: state.askedPlayer,
              askingPlayer: state.askingPlayer,
              onPressed: () => context.gameStartCubit.getNextQuestion(),
            );
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }

  void initGameStarting() {}
}
