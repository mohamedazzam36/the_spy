import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class GameLogicService {
  static final Random _random = Random();

  static T getListRandomWord<T>(List<T> wordsList) {
    return wordsList[_random.nextInt(wordsList.length)];
  }

  static List<T> getRandomList<T>(List<T> list) {
    return List<T>.from(list)..shuffle(_random);
  }

  static setSpys(BuildContext context) {
    List<PlayerModel> playersList = List.from(context.playersGameModeModel.playersList);
    PlayerModel theSpy;
    int spysNum = context.playersGameModeModel.currentMode.getModeInfo(context).numOfSpys;
    context.playersGameModeModel.spysList.clear();

    for (int i = 0; i < spysNum; i++) {
      theSpy = getListRandomWord(playersList);
      context.playersGameModeModel.spysList.add(theSpy);
      playersList.remove(theSpy);
    }
  }
}
