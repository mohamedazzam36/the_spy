part of 'settings_cubit.dart';

@immutable
sealed class SettingsState {}

final class SettingsInitial extends SettingsState {}

final class PlayersTimerSuccess extends SettingsState {}

final class SpysTimerSuccess extends SettingsState {}
