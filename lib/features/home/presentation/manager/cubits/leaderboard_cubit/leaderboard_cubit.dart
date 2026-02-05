import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/app_services/leaderboard_service.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

part 'leaderboard_state.dart';

class LeaderboardCubit extends Cubit<LeaderboardState> {
  LeaderboardCubit() : super(LeaderboardInitial());

  List<PlayerModel> selectedPlayers = [];
  bool isSelectionMode = false;

  void selectPlayer(PlayerModel player) {
    selectedPlayers.add(player);
    log("Selected Players: ${selectedPlayers.map((p) => p.name).toList()}");
    emit(LeaderboardSuccess());
  }

  void deSelectPlayer(PlayerModel player) {
    selectedPlayers.remove(player);
    emit(LeaderboardSuccess());
  }

  Future<void> deletePlayers() async {
    for (var player in selectedPlayers) {
      await LeaderboardService.deletePlayer(player);
    }
    selectedPlayers.clear();
    emit(LeaderboardSuccess());
  }

  void toggleSelectionMode() {
    isSelectionMode = !isSelectionMode;
    if (!isSelectionMode) {
      selectedPlayers.clear();
      emit(LeaderboardSelectionModeOff());
    } else {
      emit(LeaderboardSelectionModeOn());
    }
  }
}
