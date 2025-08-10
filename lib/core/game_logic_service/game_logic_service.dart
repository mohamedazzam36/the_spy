import 'dart:math';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class GameLogicService {
  static final Random _random = Random();

  static T getListRandomWord<T>(List<T> wordsList) {
    return wordsList[_random.nextInt(wordsList.length)];
  }

  static List<T> getRandomList<T>(List<T> list) {
    return List<T>.from(list)..shuffle(_random);
  }

  static setSpys() {
    List<PlayerModel> playersList = List.from(playersModel.playersList);
    PlayerModel theSpy;
    int spysNum = appServices.currentMode.getModeInfo.numOfSpys;
    playersModel.spysList.clear();

    for (int i = 0; i < spysNum; i++) {
      theSpy = getListRandomWord(playersList);
      playersModel.spysList.add(theSpy);
      playersList.remove(theSpy);
    }
  }

  static setAskingAndAskedPlayers() {
    int i = 0;
    List<PlayerModel> askingPlayers = getRandomList(playersModel.playersList);
    List<PlayerModel> askedPlayers = [askingPlayers[1]];

    while (i < askingPlayers.length) {
      if (askedPlayers[i].name != askingPlayers[i].name) {
        askedPlayers.add(askingPlayers[i]);
        i++;
      }

      // context.playersGameModeModel.askedPlayersList = askedPlayers;
      // context.playersGameModeModel.askingPlayersList = askingPlayers;
    }
  }
}
