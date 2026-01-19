import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/enums/game_modes_enum.dart';

extension MainModesInfo on MainGameModes {
  ({List<Color> backGroundColors, String iconPath, String title}) get getModeInfo {
    switch (this) {
      case MainGameModes.classic:
        return (
          title: 'classicModeTitle'.tr(),
          iconPath: Assets.imagesClassicIcon,
          backGroundColors: [
            const Color(0xffb2fbff),
            const Color(0xff6a8aff),
          ],
        );
      case MainGameModes.blind:
        return (
          title: 'blindModeTitle'.tr(),
          iconPath: Assets.imagesBlindIcon,
          backGroundColors: [
            const Color(0xffff6a92),
            const Color(0xffe894ff),
          ],
        );
      case MainGameModes.teams:
        return (
          title: 'teams'.tr(),
          iconPath: Assets.imagesClassicDoubleIcon,
          backGroundColors: [
            const Color(0xff90d46c),
            const Color(0xff4898ab),
          ],
        );
    }
  }
}
