import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_player_reveal_widget.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_word_reveal_widget.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

class GameStartingBody extends StatefulWidget {
  const GameStartingBody({super.key});

  @override
  State<GameStartingBody> createState() => _GameStartingBodyState();
}

class _GameStartingBodyState extends State<GameStartingBody> {
  String? showedWord;
  late GameModesEnum mode;

  @override
  void initState() {
    initGameStarting();
    log(context.playersGameModeModel.spysList[0].name);
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
            wordName: state.isSpy
                ? context.playersGameModeModel.spysShowedWord
                : context.playersGameModeModel.playersShowedWord,
            onPressed: () => accessPlayerCubit(context).switchBetweenPlayersAndWord(),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  void initGameStarting() {
    accessPlayerCubit(context).startGame();
    mode = context.playersGameModeModel.currentMode;
    mode.setGameStarting(context);
  }
}
