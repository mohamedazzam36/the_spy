part of 'players_cubit.dart';

@immutable
sealed class PlayersState {}

final class PlayersInitial extends PlayersState {}

final class PlayersSuccess extends PlayersState {}
