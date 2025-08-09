import 'package:flutter/widgets.dart';
import 'package:the_spy/core/models/game_mode_model.dart';
import 'package:the_spy/core/utils/extentions.dart';

({Color backGroundColor, String image, String modeDescription, int numOfSpys, String title})
accessEnumInfo(BuildContext context, GameModeModel model) {
  return model.currentMode.getModeInfo(context);
}
