import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class GameLogicService {
  static final Random _random = Random();

  static String getRandomCategoryWord(BuildContext context) {
    final categoryNames = List<String>.from(
      accessAppCubit(context).currentCategoryNames!,
    );
    categoryNames.shuffle(_random);
    return categoryNames[_random.nextInt(categoryNames.length)];
  }

  static PlayerModel pickSpy(List<PlayerModel> playersList) {
    final tempList = List<PlayerModel>.from(playersList);
    tempList.shuffle(_random);
    return tempList[_random.nextInt(tempList.length)];
  }

  static List<PlayerModel> getPlayersRandomList(List<PlayerModel> playersList) {
    final tempList = List<PlayerModel>.from(playersList);
    tempList.shuffle(_random);
    return tempList;
  }
}
