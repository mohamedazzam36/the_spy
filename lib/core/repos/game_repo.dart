import 'package:flutter/widgets.dart';
import 'package:the_spy/core/game_logic_service/game_logic_service.dart';

abstract class GameRepo {
  void setupGame(BuildContext context) {
    setPlayersShowedWord(context);

    setSpysShowedWord(context);

    setSpysList(context);
  }

  setPlayersShowedWord(BuildContext context);

  setSpysShowedWord(BuildContext context);

  setSpysList(BuildContext context) {
    GameLogicService.setSpys(context);
  }
}
