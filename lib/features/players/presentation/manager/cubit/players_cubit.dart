import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';
import 'package:the_spy/generated/l10n.dart';

part 'players_state.dart';

class PlayersCubit extends Cubit<PlayersState> {
  PlayersCubit({required this.playersRepo}) : super(PlayersInitial());

  List<String>? categoryNames;
  Mode? currentMode;
  final PlayersRepo playersRepo;
  List<PlayerModel> playersList = [];

  fetchPlayersData() {
    playersList = playersRepo.fetchPlayersData();
    emit(PlayersSuccess());
  }

  String? validatePlayer(BuildContext context, {required String? name}) {
    if (name == null || name.isEmpty) {
      return S.of(context).noNameValidate;
    } else if (playersList.any(
      (player) {
        return name == player.name;
      },
    )) {
      return S.of(context).nameRegisteredValidate;
    }
    return null;
  }

  void addPlayer(PlayerModel player) {
    playersRepo.addPlayer(player);
    emit(PlayersSuccess());
  }
}
