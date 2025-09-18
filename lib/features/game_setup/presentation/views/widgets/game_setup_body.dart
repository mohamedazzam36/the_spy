import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/player_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/players_swaping_animation_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/question_finish_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/questions_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/result_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/spys_words_selection_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/vote_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/word_reveal_widget.dart';

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
            return PlayerRevealWidget(
              player: state.player,
            );
          case WordReveal():
            return WordRevealWidget(
              wordName: state.showedWord,
            );
          case QuestionsReveal():
            return QuestionsRevealWidget(
              askedPlayer: state.askedPlayer,
              askingPlayer: state.askingPlayer,
            );
          case QuestionsFinish():
            return const QuestionFinishWidget();
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
