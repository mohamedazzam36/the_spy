import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/game_logic_service/game_logic_service.dart';
import 'package:the_spy/core/models/game_mode_model.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';

part 'players_state.dart';

class PlayersCubit extends Cubit<PlayersState> {
  PlayersCubit({required PlayersRepo playersRepo})
    : _playersRepo = playersRepo,
      super(PlayersInitial());
  late GameModeModel gameModeModel;
  final PlayersRepo _playersRepo;
  int currentPlayerIndex = 0;

  fetchPlayersData() {
    gameModeModel.playersList = _playersRepo.fetchPlayersData();
    emit(PlayersSuccess());
  }

  String? validatePlayer(BuildContext context, {required String? name}) {
    return _playersRepo.validatePlayer(
      context,
      name: name,
      playersList: gameModeModel.playersList,
    );
  }

  void addPlayer(PlayerModel player) {
    _playersRepo.addPlayer(player);
    emit(PlayersSuccess());
  }

  void switchBetweenPlayersAndWord() {
    if (currentPlayerIndex < gameModeModel.playersList.length) {
      PlayerModel currentPlayer = gameModeModel.playersList[currentPlayerIndex];
      if (state is PlayerReveal) {
        bool isSpy;
        isSpy = gameModeModel.spysList.any((element) => currentPlayer.name == element.name);
        emit(WordReveal(isSpy ? gameModeModel.spysShowedWord : gameModeModel.playersShowedWord));
        currentPlayerIndex++;
      } else {
        emit(PlayerReveal(player: gameModeModel.playersList[currentPlayerIndex]));
      }
    } else {
      emit(PlayersFinished());
    }
  }

  void startGame() {
    currentPlayerIndex = 0;
    gameModeModel.playersList = GameLogicService.getRandomList<PlayerModel>(
      gameModeModel.playersList,
    );
    emit(PlayerReveal(player: gameModeModel.playersList[currentPlayerIndex]));
  }
}
