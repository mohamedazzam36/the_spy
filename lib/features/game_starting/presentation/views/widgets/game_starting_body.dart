import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_player_reveal_widget.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_word_reveal_widget.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

class GameStartingBody extends StatefulWidget {
  const GameStartingBody({super.key});

  @override
  State<GameStartingBody> createState() => _GameStartingBodyState();
}

class _GameStartingBodyState extends State<GameStartingBody> {
  String? showedWord;
  GameModesEnum? mode;
  List<PlayerModel> playersList = [];

  @override
  void initState() {
    initGameStarting();
    log(accessPlayerCubit(context).theSpy!.name);
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
            wordName: state.isSpy ? mode!.getSpyWord(context, playersList) : showedWord!,
            onPressed: () => accessPlayerCubit(context).switchBetweenPlayersAndWord(),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  void initGameStarting() {
    mode = accessAppCubit(context).gameModeModel!.gameModesEnum;
    accessPlayerCubit(context).startGame();
    playersList = accessPlayerCubit(context).playersList;
    showedWord = mode!.getShowedWord(context, playersList);
  }
}
