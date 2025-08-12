import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class ModesService {
  static setPlayersRandomList() {
    playersModel.playersList = GameLogicService.getRandomList<PlayerModel>(
      playersModel.playersList,
    );
  }

  static setClassicPlayersShowedWord() {
    List<String> categoryWordsList = appServices.currentCategoryNames;
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    playersModel.playersShowedWord = showedword;
  }

  static setClassicSpysShowedWord() {
    playersModel.spysShowedWord = 'hide'.tr();
  }

  static setBlindPlayersShowedWord() {
    List<String> categoryWordsList = List.from(appServices.currentCategoryNames);
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    playersModel.playersShowedWord = showedword;
  }

  static setBlindSpysShowedWord() {
    final playersShowedWord = playersModel.playersShowedWord;

    List<String> categoryWordsList = List.from(appServices.currentCategoryNames);
    List<String> spysShowedList = categoryWordsList..remove(playersShowedWord);
    String spysShowedWord = GameLogicService.getListRandomWord<String>(spysShowedList);

    playersModel.spysShowedWord = spysShowedWord;
  }

  static setSpys() {
    List<PlayerModel> playersList = List.from(playersModel.playersList);
    PlayerModel theSpy;
    int spysNum = appServices.currentMode.getModeInfo.numOfSpys;
    playersModel.spysList.clear();

    for (int i = 0; i < spysNum; i++) {
      theSpy = GameLogicService.getListRandomWord(playersList);
      playersModel.spysList.add(theSpy);
      playersList.remove(theSpy);
    }
  }

  static setPlayersCategoryWords() {
    List<String> playersCategoryWords = GameLogicService.getRandomList(
      appServices.currentCategoryNames,
    );
    playersCategoryWords.remove(playersModel.playersShowedWord);
    playersCategoryWords.removeRange(0, playersCategoryWords.length - 7);
    playersCategoryWords.add(playersModel.playersShowedWord);

    playersModel.playersCategoryWords = GameLogicService.getRandomList(playersCategoryWords);
  }
}
