import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/normal_modes/normal_game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/player_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/players_swaping_animation_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/question_finish_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/questions_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/result_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/spys_words_selection_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/vote_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/word_reveal_widget.dart';

class GameSetupBody extends StatefulWidget {
  const GameSetupBody({super.key});

  @override
  State<GameSetupBody> createState() => _GameSetupBodyState();
}

class _GameSetupBodyState extends State<GameSetupBody> {
  @override
  void initState() {
    context.normalGameStartCubit.startGame();
    for (var element in NormalModeSettings.spysList) {
      log(element.name);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NormalGameSetupCubit, NormalGameSetupState>(
      buildWhen: (previous, current) => !(current is TimeIsUp || current is ResetTime),
      builder: (context, state) {
        switch (state) {
          case PlayerReveal():
            return PlayerRevealWidget(
              currentplayer: state.currentPlayer,
              prevplayer: state.prevPlayer,
              onNextPressed: () => context.normalGameStartCubit.switchBetweenPlayersAndWord(),
            );
          case WordReveal():
            return WordRevealWidget(
              wordName: state.showedWord,
              onNextPressed: () => context.normalGameStartCubit.switchBetweenPlayersAndWord(),
            );
          case QuestionsReveal():
            return QuestionsRevealWidget(
              askedPlayer: state.askedPlayer,
              askingPlayer: state.askingPlayer,
              onNextPressed: () => context.normalGameStartCubit.getNextQuestion(),
            );
          case QuestionsFinish():
            return QuestionFinishWidget(
              onReAskPressed: () => context.normalGameStartCubit.setAskingAndAskedPlayers(),
              onVotePressed: () => context.normalGameStartCubit.setVotingPairs(),
            );
          case VotingReveal():
            return VoteRevealWidget(players: state.votingList, votingPlayer: state.votingPlayer);
          case Votingfinish():
            return const PlayersSwapingAnimationWidget();
          case SpysSelectionWords():
            return SpysWordsSelectionWidget(
              spyNAme: state.spyName,
            );
          case ResultsShown():
            return ResultWidget(spysVotingInfo: state.spysVotingInfo);
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
