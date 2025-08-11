part of 'game_setup_cubit.dart';

@immutable
sealed class GameSetupState {}

final class GameStartInitial extends GameSetupState {}

final class PlayerReveal extends GameSetupState {
  final PlayerModel player;
  PlayerReveal({required this.player});
}

final class WordReveal extends GameSetupState {
  final String showedWord;

  WordReveal(this.showedWord);
}

final class QuestionsRound extends GameSetupState {
  final String askingPlayer, askedPlayer;

  QuestionsRound({required this.askingPlayer, required this.askedPlayer});
}
