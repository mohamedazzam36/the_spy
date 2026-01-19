import 'package:the_spy/core/game_services/modes_service.dart';

abstract class GameSetup {
  void setupGame() {
    ModesService.setPlayersRandomList();

    ModesService.setSpys();

    setPlayersShowedWord();

    setSpysShowedWord();

    ModesService.setSpysVotingWords();
  }

  setPlayersShowedWord();

  setSpysShowedWord();
}
