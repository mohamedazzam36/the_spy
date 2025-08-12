import 'package:the_spy/core/game_services/modes_service.dart';

abstract class GameRepo {
  void setupGame() {
    ModesService.setPlayersRandomList();

    setPlayersShowedWord();

    setSpysShowedWord();

    ModesService.setSpys();

    ModesService.setPlayersCategoryWords();
  }

  setPlayersShowedWord();

  setSpysShowedWord();
}
