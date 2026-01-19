part of 'teams_game_setup_cubit.dart';

@immutable
sealed class TeamsGameSetupState {}

final class GameStartInitial extends TeamsGameSetupState {}

final class TeamsPlayerReveal extends TeamsGameSetupState {
  final PlayerModel currentPlayer;
  final PlayerModel? prevPlayer;
  TeamsPlayerReveal({required this.currentPlayer, required this.prevPlayer});
}

final class TeamsWordReveal extends TeamsGameSetupState {
  final String showedWord;
  final int teamId;

  TeamsWordReveal(this.showedWord, this.teamId);
}

final class TeamsQuestionsReveal extends TeamsGameSetupState {
  final String askingPlayer, askedPlayer;

  TeamsQuestionsReveal({required this.askingPlayer, required this.askedPlayer});
}

final class TeamsQuestionsFinish extends TeamsGameSetupState {}

final class TeamsVotingReveal extends TeamsGameSetupState {
  final PlayerModel shownPlayer, votingPlayer;

  TeamsVotingReveal({required this.shownPlayer, required this.votingPlayer});
}

final class TeamsVotingfinish extends TeamsGameSetupState {
  final List<TeamModel> teamsInfo;

  TeamsVotingfinish({required this.teamsInfo});
}

final class TeamsSelectionWords extends TeamsGameSetupState {
  final TeamModel currentTeam;

  TeamsSelectionWords({required this.currentTeam});
}

final class TeamsResultsShown extends TeamsGameSetupState {
  final List<TeamsWordVotingInfo> teamsWordVotingInfo;

  TeamsResultsShown({required this.teamsWordVotingInfo});
}

final class TeamsResetTime extends TeamsGameSetupState {}

final class TeamsTimeIsUp extends TeamsGameSetupState {}
