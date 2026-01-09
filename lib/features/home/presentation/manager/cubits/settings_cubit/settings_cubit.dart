import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/app_services/time_service.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  final List<int> playersTimes = TimeService.playersTimes;
  final List<int> spysTimes = TimeService.spysTimes;

  late int playersTimerIndex, spysTimerIndex;

  void changePlayersTimer(int newTimeIndex) {
    playersTimerIndex = newTimeIndex;
    TimeService.setPlayersVotingTime(playersTimes[newTimeIndex]);
    emit(PlayersTimerSuccess());
  }

  void changeSpysTimer(int newTimeIndex) {
    spysTimerIndex = newTimeIndex;
    TimeService.setSpysVotingTime(spysTimes[newTimeIndex]);
    emit(SpysTimerSuccess());
  }
}
