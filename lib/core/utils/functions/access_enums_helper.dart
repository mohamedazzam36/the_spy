import 'package:flutter/widgets.dart';
import 'package:the_spy/core/models/game_mode_model.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';

({Color backGroundColor, String image, String modeDescription, int numOfSpys, String title})
accessEnumInfo(BuildContext context, GameModeModel model) {
  return model.gameModesEnum.getModeInfo(context);
}

({Color backGroundColor, String image, String modeDescription, int numOfSpys, String title})
accessAppCubitEnumInfo(BuildContext context) {
  return accessAppCubit(context).gameModeModel!.gameModesEnum.getModeInfo(context);
}
