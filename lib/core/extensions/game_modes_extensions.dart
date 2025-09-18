import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/repos/game_repo_impl.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/enums/enums.dart';

extension ModesInfo on GameModesEnum {
  ({List<Color> backGroundColors, String iconPath, String title}) get getModeInfo {
    switch (this) {
      case GameModesEnum.classic:
        return (
          title: 'classicModeTitle'.tr(),
          iconPath: Assets.imagesClassicIcon,
          backGroundColors: [
            const Color(0xffb2fbff),
            const Color(0xff6a8aff),
          ],
        );
      case GameModesEnum.blind:
        return (
          title: 'blindModeTitle'.tr(),
          iconPath: Assets.imagesBlindIcon,
          backGroundColors: [
            const Color(0xffff6a92),
            const Color(0xffe894ff),
          ],
        );
      case GameModesEnum.classicDouble:
        return (
          title: 'classicDouble'.tr(),
          iconPath: Assets.imagesClassicDoubleIcon,
          backGroundColors: [
            const Color(0xff90d46c),
            const Color(0xff4898ab),
          ],
        );
      case GameModesEnum.blindDouble:
        return (
          title: 'blindDouble'.tr(),
          iconPath: Assets.imagesBlindDoubleIcon,
          backGroundColors: [
            const Color(0xffffe1a4),
            const Color(0xffff7c90),
          ],
        );
      case GameModesEnum.duo:
        return (
          title: 'Duo'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color(0xff2d3f36),
            const Color(0xffffffe8),
          ],
        );
    }
  }

  int get numOfSpys {
    switch (this) {
      case GameModesEnum.classic:
        return 1;
      case GameModesEnum.blind:
        return 1;
      case GameModesEnum.classicDouble:
        return 2;
      case GameModesEnum.blindDouble:
        return 2;
      case GameModesEnum.duo:
        return 2;
    }
  }

  String get modeDescription {
    switch (this) {
      case GameModesEnum.classic:
        return 'classicModeDescription'.tr();
      case GameModesEnum.blind:
        return 'blindModeDescription'.tr();
      case GameModesEnum.classicDouble:
        return 'blindModeDescription'.tr();
      case GameModesEnum.blindDouble:
        return 'blindModeDescription'.tr();
      case GameModesEnum.duo:
        return 'blindModeDescription'.tr();
    }
  }

  void get setGameStarting {
    switch (this) {
      case GameModesEnum.classic:
        return Classic().setupGame();
      case GameModesEnum.blind:
        return Blind().setupGame();
      case GameModesEnum.classicDouble:
        Classic().setupGame();
      case GameModesEnum.blindDouble:
        Blind().setupGame();
      case GameModesEnum.duo:
        Duo().setupGame();
    }
  }
}
