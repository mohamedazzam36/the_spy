part of 'game_setup_cubit.dart';

@immutable
sealed class GameSetupState {}

final class GameStartInitial extends GameSetupState {}

final class PlayerReveal extends GameSetupState {
  final PlayerModel currentPlayer;
  final PlayerModel? prevPlayer;
  PlayerReveal({required this.currentPlayer, required this.prevPlayer});
}

final class WordReveal extends GameSetupState {
  final String showedWord;

  WordReveal(this.showedWord);
}

final class QuestionsReveal extends GameSetupState {
  final String askingPlayer, askedPlayer;

  QuestionsReveal({required this.askingPlayer, required this.askedPlayer});
}

final class QuestionsFinish extends GameSetupState {}

final class VotingReveal extends GameSetupState {
  final PlayerModel votingPlayer;
  final List<PlayerModel> votingList;

  VotingReveal({required this.votingPlayer, required this.votingList});
}

final class Votingfinish extends GameSetupState {}

final class SpysSelectionWords extends GameSetupState {
  final String spyName;

  SpysSelectionWords({required this.spyName});
}

final class ResultsShown extends GameSetupState {
  final List<SpysVotingInfo> spysVotingInfo;

  ResultsShown({required this.spysVotingInfo});
}
