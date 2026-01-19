import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/team_modes/teams_game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/player_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/question_finish_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/questions_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/team_result_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/team_vote_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_init_voting_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_word_reveal_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_words_selection_widget.dart';

class TeamsGameSetupBody extends StatefulWidget {
  const TeamsGameSetupBody({super.key});

  @override
  State<TeamsGameSetupBody> createState() => _TeamsGameSetupBodyState();
}

class _TeamsGameSetupBodyState extends State<TeamsGameSetupBody> {
  @override
  void initState() {
    context.teamsGameStartCubit.startGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeamsGameSetupCubit, TeamsGameSetupState>(
      listenWhen: (previous, current) => current is TeamsTimeIsUp,
      listener: (context, state) {
        if (state is TeamsTimeIsUp) context.teamsGameStartCubit.getNextPlayerVote(null);
      },
      buildWhen: (previous, current) => !(current is TeamsTimeIsUp || current is TeamsResetTime),
      builder: (context, state) {
        switch (state) {
          case TeamsPlayerReveal():
            return PlayerRevealWidget(
              currentplayer: state.currentPlayer,
              prevplayer: state.prevPlayer,
              onNextPressed: () => context.teamsGameStartCubit.switchBetweenPlayersAndWord(),
            );
          case TeamsWordReveal():
            return TeamsWordRevealWidget(
              teamId: state.teamId,
              wordName: state.showedWord,
              onNextPressed: () => context.teamsGameStartCubit.switchBetweenPlayersAndWord(),
            );
          case TeamsQuestionsReveal():
            return QuestionsRevealWidget(
              askedPlayer: state.askedPlayer,
              askingPlayer: state.askingPlayer,
              onNextPressed: () => context.teamsGameStartCubit.getNextQuestion(),
            );
          case TeamsQuestionsFinish():
            return QuestionFinishWidget(
              onReAskPressed: () => context.teamsGameStartCubit.setAskingAndAskedPlayers(),
              onVotePressed: () => context.teamsGameStartCubit.setVotingPairs(),
            );
          case TeamsVotingReveal():
            return TeamVoteRevealWidget(
              shownPlayer: state.shownPlayer,
              votingPlayer: state.votingPlayer,
            );
          case TeamsVotingfinish():
            return TeamsInitVotingWidget(
              teamsInfo: state.teamsInfo,
              onNextPressed: () => context.teamsGameStartCubit.setTeamsWordVotingInfo(),
            );
          case TeamsSelectionWords():
            return TeamsWordsSelectionWidget(
              currentTeam: state.currentTeam,
            );
          case TeamsResultsShown():
            return TeamResultWidget(teamVotingInfo: state.teamsWordVotingInfo);
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
