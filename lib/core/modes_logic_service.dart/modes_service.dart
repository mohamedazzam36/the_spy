import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/extensions/categories_info_extensions.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class ModesService {
  static void setPlayersRandomList() {
    AppServices.playersList = GameLogicService.getRandomList<PlayerModel>(
      AppServices.playersList,
    );
  }

  static void setClassicPlayersShowedWord() {
    List<String> categoryWordsList = AppServices.currentCategory.getCategoryInfo.namesList;
    String showedword = GameLogicService.getListRandomItem<String>(categoryWordsList);

    NormalModeSettings.playersShowedWord = showedword;
  }

  static void setClassicSpysShowedWord() {
    NormalModeSettings.spysShowedWord = 'hide'.tr();
  }

  static void setBlindPlayersShowedWord() {
    String showedword = GameLogicService.getListRandomItem<String>(
      AppServices.currentCategory.getCategoryInfo.namesList,
    );

    NormalModeSettings.playersShowedWord = showedword;
  }

  static void setBlindSpysShowedWord() {
    final playersShowedWord = NormalModeSettings.playersShowedWord;

    List<String> categoryWordsList = List.from(
      AppServices.currentCategory.getCategoryInfo.namesList,
    );
    List<String> spysShowedList = categoryWordsList..remove(playersShowedWord);
    String spysShowedWord = GameLogicService.getListRandomItem<String>(spysShowedList);

    NormalModeSettings.spysShowedWord = spysShowedWord;
  }

  static void setSpys() {
    List<PlayerModel> playersList = List.from(AppServices.playersList);
    PlayerModel theSpy;
    int spysNum = NormalModeSettings.numOfSpys;
    NormalModeSettings.spysList.clear();

    for (int i = 0; i < spysNum; i++) {
      theSpy = GameLogicService.getListRandomItem(playersList);
      NormalModeSettings.spysList.add(theSpy);
      playersList.remove(theSpy);
    }
  }

  static void setSpysVotingWords() {
    List<String> tempPlayersCategoryWords = GameLogicService.getRandomList(
      AppServices.currentCategory.getCategoryInfo.namesList,
    );
    List<String> playersCategoryWords = [];
    String randomCategoryWord;
    int i = 0;
    tempPlayersCategoryWords.remove(NormalModeSettings.playersShowedWord);
    while (i < 7) {
      randomCategoryWord = GameLogicService.getListRandomItem(tempPlayersCategoryWords);
      if (!playersCategoryWords.contains(randomCategoryWord)) {
        playersCategoryWords.add(randomCategoryWord);
        i++;
      }
    }
    playersCategoryWords.add(NormalModeSettings.playersShowedWord);

    NormalModeSettings.playersCategoryWords = GameLogicService.getRandomList(playersCategoryWords);
  }
}
