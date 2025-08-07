import 'package:flutter/material.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class PlayersRepo {
  List<PlayerModel> fetchPlayersData();
  void addPlayer(PlayerModel player);
  String? validatePlayer(
    BuildContext context, {
    required String? name,
    required List<PlayerModel> playersList,
  });
}
