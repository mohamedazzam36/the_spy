import 'package:the_spy/core/game_services/modes_service.dart';

abstract class GameRepo {
  void setupGame() {
    ModesService.setPlayersRandomList();

    ModesService.setSpys();

    setPlayersShowedWord();

    setSpysShowedWord();

    ModesService.setPlayersCategoryWords();
  }

  setPlayersShowedWord();

  setSpysShowedWord();
}
