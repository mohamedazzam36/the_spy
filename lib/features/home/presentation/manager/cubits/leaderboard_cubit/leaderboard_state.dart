part of 'leaderboard_cubit.dart';

@immutable
sealed class LeaderboardState {}

final class LeaderboardInitial extends LeaderboardState {}

final class LeaderboardSelectionModeOn extends LeaderboardState {}

final class LeaderboardSelectionModeOff extends LeaderboardState {}

final class LeaderboardSuccess extends LeaderboardState {}
