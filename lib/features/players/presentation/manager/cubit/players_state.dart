part of 'players_cubit.dart';

@immutable
sealed class PlayersState {}

final class PlayersInitial extends PlayersState {}

final class PlayersSuccess extends PlayersState {}

final class PlayerReveal extends PlayersState {
  final PlayerModel player;
  PlayerReveal({required this.player});
}

final class WordReveal extends PlayersState {
  final String showedWord;

  WordReveal(this.showedWord);
}

final class PlayersFinished extends PlayersState {}
