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
  final bool isSpy;

  WordReveal({required this.isSpy});
}

final class PlayersFinished extends PlayersState {}
