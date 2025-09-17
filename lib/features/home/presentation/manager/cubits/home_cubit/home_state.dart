part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class NavTapChange extends HomeState {}

final class CategoryChange extends HomeState {}

final class GameFinish extends HomeState {}
