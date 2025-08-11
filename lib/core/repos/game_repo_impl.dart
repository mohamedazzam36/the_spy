import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/game_services/modes_service.dart';
import 'package:the_spy/core/repos/game_repo.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class Classic extends GameRepo {
  @override
  setPlayersShowedWord() {
    ModesService.setClassicPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    ModesService.setClassicSpysShowedWord();
  }
}

class Blind extends GameRepo {
  @override
  setPlayersShowedWord() {
    ModesService.setBlindPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    ModesService.setBlindSpysShowedWord();
  }
}

class SpeacialPlayers extends GameRepo {
  @override
  setPlayersShowedWord() {
    List<PlayerModel> playersList = List.from(playersModel.playersList);

    PlayerModel playersShowedPlayer = GameLogicService.getListRandomWord<PlayerModel>(
      playersList,
    );

    playersModel.playersShowedWord = playersShowedPlayer.name;
  }

  @override
  setSpysShowedWord() {
    String playersShowedWord = playersModel.playersShowedWord;

    List<PlayerModel> playersList = List.from(playersModel.playersList);
    List<String> spysShowedList =
        playersList
            .map(
              (e) => e.name,
            )
            .toList()
          ..remove(playersShowedWord);
    String spysShowedPlayer = GameLogicService.getListRandomWord(
      spysShowedList,
    );

    playersModel.spysShowedWord = spysShowedPlayer;
  }
}
