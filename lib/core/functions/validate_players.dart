import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

String? validatePlayers({required String? name, required List<PlayerModel> playersList}) {
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
