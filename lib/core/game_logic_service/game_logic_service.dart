import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';

abstract class GameLogicService {
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
}
