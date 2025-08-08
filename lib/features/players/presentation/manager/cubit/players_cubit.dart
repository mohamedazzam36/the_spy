import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';

part 'players_state.dart';

class PlayersCubit extends Cubit<PlayersState> {
  PlayersCubit({required this.playersRepo}) : super(PlayersInitial());

  final PlayersRepo playersRepo;
  List<PlayerModel> playersList = [];
  List<PlayerModel> playersRandomList = [];
  PlayerModel? theSpy;

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

  void showWordToPlayer() {}

  void getSpyName(BuildContext context) {
    List<PlayerModel> twicedRandomList = playersRandomList..shuffle();
    theSpy = twicedRandomList[Random().nextInt(playersRandomList.length)];
    emit(PlayerReveal());
  }

  void getPlayersRandomList(BuildContext context) {
    List<PlayerModel> randomTempList = playersList..shuffle();
    playersRandomList = randomTempList..shuffle();
  }
}
