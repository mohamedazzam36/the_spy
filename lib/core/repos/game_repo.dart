import 'package:flutter/widgets.dart';

abstract class GameRepo {
  void setupGame(BuildContext context) {
    setPlayersShowedWord(context);

    setSpysShowedWord(context);

    setSpysList(context);
  }

  setPlayersShowedWord(BuildContext context);

  setSpysShowedWord(BuildContext context);

  setSpysList(BuildContext context);
}
