import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';

class PlayersRepoImpl implements PlayersRepo {
  @override
  List<PlayerModel> fetchPlayersData() {
    final Box<PlayerModel> playersList = getIt.get<Box<PlayerModel>>();
    return playersList.values.toList();
  }

  @override
  void addPlayer(PlayerModel player) {
    final Box<PlayerModel> playersList = getIt.get<Box<PlayerModel>>();
    playersList.add(player);
  }

  @override
  String? validatePlayer(
    BuildContext context, {
    required String? name,
    required List<PlayerModel> playersList,
  }) {
    if (name == null || name.isEmpty) {
      return 'noNameValidate'.tr();
    } else if (playersList.any(
      (player) {
        return name == player.name;
      },
    )) {
      return 'nameRegisteredValidate'.tr();
    }
    return null;
  }
}
