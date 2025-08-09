import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/game_logic_service/game_logic_service.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';

part 'players_state.dart';

class PlayersCubit extends Cubit<PlayersState> {
  PlayersCubit({required this.playersRepo}) : super(PlayersInitial());

  final PlayersRepo playersRepo;
  List<PlayerModel> playersList = [];
  List<PlayerModel> playersRandomList = [];
  PlayerModel? theSpy;
  String? showedWord;
  int currentPlayerIndex = 0;

  fetchPlayersData() {
    playersList = playersRepo.fetchPlayersData();
    emit(PlayersSuccess());
  }

  String? validatePlayer(BuildContext context, {required String? name}) {
    return playersRepo.validatePlayer(
      context,
      name: name,
      playersList: playersList,
    );
  }

  void addPlayer(PlayerModel player) {
    playersRepo.addPlayer(player);
    emit(PlayersSuccess());
  }

  void switchBetweenPlayersAndWord() {
    if (currentPlayerIndex < playersRandomList.length - 1) {
      PlayerModel currentPlayer = playersRandomList[currentPlayerIndex];

      if (state is PlayerReveal) {
        emit(WordReveal(isSpy: currentPlayer.name == theSpy!.name));
      } else {
        emit(PlayerReveal(player: playersRandomList[++currentPlayerIndex]));
      }
    } else {
      emit(PlayersFinished());
    }
  }

  void startGame() {
    currentPlayerIndex = 0;
    playersRandomList = GameLogicService.getPlayersRandomList(playersList);
    theSpy = GameLogicService.getRandomPlayer(playersRandomList);
    emit(PlayerReveal(player: playersRandomList[currentPlayerIndex]));
  }
}
