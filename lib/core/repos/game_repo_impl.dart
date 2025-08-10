import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/game_logic_service/game_logic_service.dart';
import 'package:the_spy/core/repos/game_repo.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class Classic extends GameRepo {
  @override
  setPlayersShowedWord() {
    List<String> categoryWordsList = appServices.currentCategoryNames;
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    playersModel.playersShowedWord = showedword;
  }

  @override
  setSpysShowedWord() {
    playersModel.spysShowedWord = 'hide'.tr();
  }
}

class ClassicDouble extends GameRepo {
  @override
  setPlayersShowedWord() {
    List<String> categoryWordsList = appServices.currentCategoryNames;
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    playersModel.playersShowedWord = showedword;
  }

  @override
  setSpysShowedWord() {
    playersModel.spysShowedWord = 'hide'.tr();
  }
}

class Blind extends GameRepo {
  @override
  setPlayersShowedWord() {
    List<String> categoryWordsList = List.from(appServices.currentCategoryNames);
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    playersModel.playersShowedWord = showedword;
  }

  @override
  setSpysShowedWord() {
    final playersShowedWord = playersModel.playersShowedWord;

    List<String> categoryWordsList = List.from(appServices.currentCategoryNames);
    List<String> spysShowedList = categoryWordsList..remove(playersShowedWord);
    String spysShowedWord = GameLogicService.getListRandomWord<String>(spysShowedList);

    playersModel.spysShowedWord = spysShowedWord;
  }
}

class BlindDouble extends GameRepo {
  @override
  setPlayersShowedWord() {
    List<String> categoryWordsList = List.from(appServices.currentCategoryNames);
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    playersModel.playersShowedWord = showedword;
  }

  @override
  setSpysShowedWord() {
    final playersShowedWord = playersModel.playersShowedWord;

    List<String> categoryWordsList = List.from(appServices.currentCategoryNames);
    List<String> spysShowedList = categoryWordsList..remove(playersShowedWord);
    String spysShowedWord = GameLogicService.getListRandomWord<String>(spysShowedList);

    playersModel.spysShowedWord = spysShowedWord;
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
