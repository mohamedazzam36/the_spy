part of 'normal_game_setup_cubit.dart';

@immutable
sealed class NormalGameSetupState {}

final class GameStartInitial extends NormalGameSetupState {}

final class PlayerReveal extends NormalGameSetupState {
  final PlayerModel currentPlayer;
  final PlayerModel? prevPlayer;
  PlayerReveal({required this.currentPlayer, required this.prevPlayer});
}

final class WordReveal extends NormalGameSetupState {
  final String showedWord;

  WordReveal(this.showedWord);
}

final class QuestionsReveal extends NormalGameSetupState {
  final String askingPlayer, askedPlayer;

  QuestionsReveal({required this.askingPlayer, required this.askedPlayer});
}

final class QuestionsFinish extends NormalGameSetupState {}

final class VotingReveal extends NormalGameSetupState {
  final PlayerModel votingPlayer;
  final List<PlayerModel> votingList;

  VotingReveal({required this.votingPlayer, required this.votingList});
}

final class Votingfinish extends NormalGameSetupState {}

final class SpysSelectionWords extends NormalGameSetupState {
  final String spyName;

  SpysSelectionWords({required this.spyName});
}

final class ResultsShown extends NormalGameSetupState {
  final List<SpysVotingInfo> spysVotingInfo;

  ResultsShown({required this.spysVotingInfo});
}

final class ResetTime extends NormalGameSetupState {}

final class TimeIsUp extends NormalGameSetupState {}
