part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeSuccess extends HomeState {}

final class SettingsState extends HomeState {}

final class LeaderBoardState extends HomeState {}
