import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class GameLogicService {
  static void getSpyName(
    BuildContext context, {
    required List<PlayerModel> playersRandomList,
  }) {
    List<PlayerModel> twicedRandomList = playersRandomList..shuffle();
    accessPlayerCubit(context).theSpy =
        twicedRandomList[Random().nextInt(playersRandomList.length)];
  }

  static String getRandomCategoryWord(
    BuildContext context,
  ) {
    List<String> categoryNames = accessAppCubit(context).currentCategoryNames!
      ..shuffle();
    String wordName =
        categoryNames[Random().nextInt(
          categoryNames.length,
        )];
    return wordName;
  }

  static List<PlayerModel> getPlayersRandomList(BuildContext context) {
    List<PlayerModel> randomTempList = accessPlayerCubit(context).playersList
      ..shuffle();
    return randomTempList..shuffle();
  }
}
