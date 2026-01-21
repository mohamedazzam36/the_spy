import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/game_setup_logic/game_setup_impl.dart';
import 'package:the_spy/core/game_setup_logic/teams_game_setup.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/core/modes_logic_service.dart/modes_service.dart';
import 'package:the_spy/core/modes_logic_service.dart/teams_modes_services.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/enums/game_modes_enum.dart';

extension SubModesInfo on SubGameModes {
  ({List<Color> backGroundColors, String iconPath, String title}) get getModeInfo {
    switch (this) {
      case SubGameModes.classicOneSpy:
        return (
          title: 'single'.tr(),
          iconPath: Assets.imagesClassicIcon,
          backGroundColors: [
            const Color(0xffb2fbff),
            const Color(0xff6a8aff),
          ],
        );
      case SubGameModes.blindOneSpy:
        return (
          title: 'single'.tr(),
          iconPath: Assets.imagesBlindIcon,
          backGroundColors: [
            const Color(0xffff6a92),
            const Color(0xffe894ff),
          ],
        );
      case SubGameModes.classicTwoSpys:
        return (
          title: 'double'.tr(),
          iconPath: Assets.imagesClassicDoubleIcon,
          backGroundColors: [
            const Color(0xff90d46c),
            const Color(0xff4898ab),
          ],
        );
      case SubGameModes.blindTwoSpys:
        return (
          title: 'double'.tr(),
          iconPath: Assets.imagesBlindDoubleIcon,
          backGroundColors: [
            const Color(0xffffe1a4),
            const Color(0xffff7c90),
          ],
        );
      case SubGameModes.classicTwoFriendsSpys:
        return (
          title: 'Duo'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color(0xff2d3f36),
            const Color(0xffffffe8),
          ],
        );
      case SubGameModes.twoTeams:
        return (
          title: 'twoTeams'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color.fromARGB(255, 250, 105, 32),
            const Color.fromARGB(255, 240, 240, 15),
          ],
        );
      case SubGameModes.threeTeams:
        return (
          title: 'threeTeams'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color.fromARGB(255, 153, 252, 4),
            const Color.fromARGB(255, 15, 109, 240),
          ],
        );
      case SubGameModes.customClassicSpys:
        return (
          title: 'custom'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color.fromARGB(255, 4, 211, 252),
            const Color.fromARGB(255, 232, 15, 240),
          ],
        );
      case SubGameModes.customBlindSpys:
        return (
          title: 'custom'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color.fromARGB(255, 202, 240, 244),
            const Color.fromARGB(255, 224, 8, 227),
          ],
        );
      case SubGameModes.customTeams:
        return (
          title: 'custom'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color.fromARGB(255, 202, 240, 244),
            const Color.fromARGB(255, 224, 8, 227),
          ],
        );
      case SubGameModes.randomClassic:
        return (
          title: 'random'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color.fromARGB(255, 1, 255, 225),
            const Color.fromARGB(255, 0, 56, 241),
          ],
        );
      case SubGameModes.randomBlind:
        return (
          title: 'random'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color.fromARGB(255, 1, 255, 225),
            const Color.fromARGB(255, 0, 56, 241),
          ],
        );
      case SubGameModes.randomTeams:
        return (
          title: 'random'.tr(),
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color.fromARGB(255, 1, 255, 225),
            const Color.fromARGB(255, 0, 56, 241),
          ],
        );
    }
  }

  void initialSetup({int? spysNum, int? teamsNum}) {
    switch (this) {
      case SubGameModes.classicOneSpy:
        AppServices.currentSubMode = this;
        NormalModeSettings.numOfSpys = 1;
        break;
      case SubGameModes.blindOneSpy:
        AppServices.currentSubMode = this;
        NormalModeSettings.numOfSpys = 1;
        break;
      case SubGameModes.classicTwoSpys:
        AppServices.currentSubMode = this;
        NormalModeSettings.numOfSpys = 2;
        break;
      case SubGameModes.blindTwoSpys:
        AppServices.currentSubMode = this;
        NormalModeSettings.numOfSpys = 2;
        break;
      case SubGameModes.classicTwoFriendsSpys:
        AppServices.currentSubMode = this;
        NormalModeSettings.numOfSpys = 2;
        break;
      case SubGameModes.twoTeams:
        AppServices.currentSubMode = this;
        TeamsModeSettings.numOfTeams = 2;
        break;
      case SubGameModes.threeTeams:
        AppServices.currentSubMode = this;
        TeamsModeSettings.numOfTeams = 3;
        break;
      case SubGameModes.customClassicSpys:
        AppServices.currentSubMode = this;
        NormalModeSettings.numOfSpys = spysNum!;
        break;
      case SubGameModes.customBlindSpys:
        AppServices.currentSubMode = this;
        NormalModeSettings.numOfSpys = spysNum!;
        break;
      case SubGameModes.customTeams:
        AppServices.currentSubMode = this;
        TeamsModeSettings.numOfTeams = teamsNum!;
        break;
      case SubGameModes.randomClassic:
        AppServices.currentSubMode = this;
        break;

      case SubGameModes.randomBlind:
        AppServices.currentSubMode = this;
        break;

      case SubGameModes.randomTeams:
        AppServices.currentSubMode = this;
        break;
    }
  }

  bool canStartGame() {
    switch (this) {
      case SubGameModes.classicOneSpy:
      case SubGameModes.classicTwoSpys:
      case SubGameModes.classicTwoFriendsSpys:
      case SubGameModes.blindOneSpy:
      case SubGameModes.blindTwoSpys:
      case SubGameModes.customClassicSpys:
      case SubGameModes.customBlindSpys:
        return canNormalGameStart();

      case SubGameModes.threeTeams:
      case SubGameModes.twoTeams:
      case SubGameModes.customTeams:
        return canTeamsGameStart();
      case SubGameModes.randomClassic:
      case SubGameModes.randomBlind:
        if (AppServices.playersList.length < 3) {
          return false;
        } else {
          ModesService.setRandomSpys();
          return true;
        }

      case SubGameModes.randomTeams:
        if (AppServices.playersList.length < 4) {
          return false;
        } else {
          TeamsModesServices.setRandomTeams();
          return true;
        }
    }
  }

  int get minimumModePlayers {
    switch (this) {
      case SubGameModes.classicOneSpy:
      case SubGameModes.classicTwoSpys:
      case SubGameModes.classicTwoFriendsSpys:
      case SubGameModes.blindOneSpy:
      case SubGameModes.blindTwoSpys:
      case SubGameModes.customClassicSpys:
      case SubGameModes.customBlindSpys:
        return (NormalModeSettings.numOfSpys * 2 + 1);

      case SubGameModes.threeTeams:
      case SubGameModes.twoTeams:
      case SubGameModes.customTeams:
        return TeamsModeSettings.numOfTeams * 2;
      case SubGameModes.randomClassic:
      case SubGameModes.randomBlind:
        return 3;
      case SubGameModes.randomTeams:
        return 4;
    }
  }

  bool canNormalGameStart() {
    int playesNum = AppServices.playersList.length;
    int spysNum = NormalModeSettings.numOfSpys;
    return playesNum >= (spysNum * 2 + 1);
  }

  bool canTeamsGameStart() {
    int playesNum = AppServices.playersList.length;
    int teamsNum = TeamsModeSettings.numOfTeams;

    return playesNum >= teamsNum * 2;
  }

  String get modeDescription {
    switch (this) {
      case SubGameModes.classicOneSpy:
        return 'classicModeDescription'.tr();
      case SubGameModes.blindOneSpy:
        return 'blindModeDescription'.tr();
      case SubGameModes.classicTwoSpys:
        return 'blindModeDescription'.tr();
      case SubGameModes.blindTwoSpys:
        return 'blindModeDescription'.tr();
      case SubGameModes.classicTwoFriendsSpys:
        return 'blindModeDescription'.tr();
      case SubGameModes.twoTeams:
        return 'blindModeDescription'.tr();
      case SubGameModes.threeTeams:
        return 'blindModeDescription'.tr();
      case SubGameModes.customClassicSpys:
        return 'blindModeDescription'.tr();
      case SubGameModes.customBlindSpys:
        return 'blindModeDescription'.tr();
      case SubGameModes.customTeams:
        return 'blindModeDescription'.tr();
      case SubGameModes.randomClassic:
        return 'blindModeDescription'.tr();
      case SubGameModes.randomBlind:
        return 'blindModeDescription'.tr();
      case SubGameModes.randomTeams:
        return 'blindModeDescription'.tr();
    }
  }

  void setGameStarting() {
    switch (this) {
      case SubGameModes.classicOneSpy:
      case SubGameModes.classicTwoSpys:
      case SubGameModes.customClassicSpys:
      case SubGameModes.randomClassic:
        return Classic().setupGame();

      case SubGameModes.blindOneSpy:
      case SubGameModes.blindTwoSpys:
      case SubGameModes.customBlindSpys:
      case SubGameModes.randomBlind:
        return Blind().setupGame();

      case SubGameModes.classicTwoFriendsSpys:
        return Duo().setupGame();

      case SubGameModes.threeTeams:
      case SubGameModes.twoTeams:
      case SubGameModes.customTeams:
      case SubGameModes.randomTeams:
        return TeamsGameSetup().setup();
    }
  }
}
