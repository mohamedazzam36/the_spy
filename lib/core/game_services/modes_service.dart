import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/extensions/categories_info_extensions.dart';
import 'package:the_spy/core/extensions/game_modes_extensions.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class ModesService {
  static setPlayersRandomList() {
    playersModel.playersList = GameLogicService.getRandomList<PlayerModel>(
      playersModel.playersList,
    );
  }

  static setClassicPlayersShowedWord() {
    List<String> categoryWordsList = AppServices.currentCategory.getCategoryInfo.namesList;
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    playersModel.playersShowedWord = showedword;
  }

  static setClassicSpysShowedWord() {
    playersModel.spysShowedWord = 'hide'.tr();
  }

  static setBlindPlayersShowedWord() {
    List<String> categoryWordsList = List.from(
      AppServices.currentCategory.getCategoryInfo.namesList,
    );
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    playersModel.playersShowedWord = showedword;
  }

  static setBlindSpysShowedWord() {
    final playersShowedWord = playersModel.playersShowedWord;

    List<String> categoryWordsList = List.from(
      AppServices.currentCategory.getCategoryInfo.namesList,
    );
    List<String> spysShowedList = categoryWordsList..remove(playersShowedWord);
    String spysShowedWord = GameLogicService.getListRandomWord<String>(spysShowedList);

    playersModel.spysShowedWord = spysShowedWord;
  }

  static setSpys() {
    List<PlayerModel> playersList = List.from(playersModel.playersList);
    PlayerModel theSpy;
    int spysNum = AppServices.currentMode.numOfSpys;
    playersModel.spysList.clear();

    for (int i = 0; i < spysNum; i++) {
      theSpy = GameLogicService.getListRandomWord(playersList);
      playersModel.spysList.add(theSpy);
      playersList.remove(theSpy);
    }
  }

  static setPlayersCategoryWords() {
    List<String> tempPlayersCategoryWords = GameLogicService.getRandomList(
      AppServices.currentCategory.getCategoryInfo.namesList,
    );
    List<String> playersCategoryWords = [];
    String randomCategoryWord;
    int i = 0;
    tempPlayersCategoryWords.remove(playersModel.playersShowedWord);
    while (i < 7) {
      randomCategoryWord = GameLogicService.getListRandomWord(tempPlayersCategoryWords);
      if (!playersCategoryWords.contains(randomCategoryWord)) {
        playersCategoryWords.add(randomCategoryWord);
        i++;
      }
    }
    playersCategoryWords.add(playersModel.playersShowedWord);

    playersModel.playersCategoryWords = GameLogicService.getRandomList(playersCategoryWords);
  }
}
