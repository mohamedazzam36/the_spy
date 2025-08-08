part of 'players_cubit.dart';

@immutable
sealed class PlayersState {}

final class PlayersInitial extends PlayersState {}

final class PlayersSuccess extends PlayersState {}

final class PlayerReveal extends PlayersState {}

final class WordReveal extends PlayersState {}
