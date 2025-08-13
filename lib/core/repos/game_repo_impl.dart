import 'package:easy_localization/easy_localization.dart';
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
  setupGame() {
    setCurrentCategory();

    ModesService.setPlayersRandomList();

    setPlayersShowedWord();

    setSpysShowedWord();

    ModesService.setSpys();

    setPlayersCategoryWords();
  }

  setCurrentCategory() {
    appServices.currentCategoryNames = playersModel.playersList.map((e) => e.name).toList();
  }

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

  setPlayersCategoryWords() {
    List<String> playersCategoryWords = GameLogicService.getRandomList(
      appServices.currentCategoryNames,
    );
    playersCategoryWords.remove(playersModel.playersShowedWord);

    int categoryLength = playersCategoryWords.length;

    if (categoryLength >= 7) {
      playersCategoryWords.removeRange(0, categoryLength - 7);
      playersCategoryWords.add(playersModel.playersShowedWord);
    } else {
      playersCategoryWords.add(playersModel.playersShowedWord);
    }
    playersModel.playersCategoryWords = GameLogicService.getRandomList(playersCategoryWords);
  }
}

class Duo extends GameRepo {
  @override
  setPlayersShowedWord() {
    ModesService.setClassicPlayersShowedWord();
  }

  @override
  setSpysShowedWord() {
    String spysShowedWord = 'hideAll'.tr();
    for (var element in playersModel.spysList) {
      spysShowedWord += '\n ${element.name}';
    }
    playersModel.spysShowedWord = spysShowedWord;
  }
}
