import 'package:the_spy/core/enums/nick_names_enum.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

extension PlayersExtension on PlayerModel {
  NickNamesEnum get rank {
    switch (score) {
      case >= 1000:
        return NickNamesEnum.theSpy;
      case >= 700:
        return NickNamesEnum.theCharmer;
      case >= 500:
        return NickNamesEnum.theSneaky;
      case >= 350:
        return NickNamesEnum.theWeasel;
      case >= 150:
        return NickNamesEnum.thePhantom;
      case >= 50:
        return NickNamesEnum.theHustler;
      default:
        return NickNamesEnum.theRookie;
    }
  }
}
