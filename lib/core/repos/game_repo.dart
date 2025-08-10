import 'package:the_spy/core/game_logic_service/game_logic_service.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class GameRepo {
  void setupGame() {
    setPlayersRandomList();

    setPlayersShowedWord();

    setSpysShowedWord();

    setSpysList();

    setAskRound();
  }

  setPlayersRandomList() {
    playersModel.playersList = GameLogicService.getRandomList<PlayerModel>(
      playersModel.playersList,
    );
  }

  setPlayersShowedWord();

  setSpysShowedWord();

  setSpysList() {
    GameLogicService.setSpys();
  }

  setAskRound() {
    GameLogicService.setAskingAndAskedPlayers();
  }
}
