import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/repos/game_repo_impl.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/size_config.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/game_setup_cubit.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

extension ModesInfo on GameModesEnum {
  ({
    List<Color> backGroundColors,
    String iconPath,
    String modeDescription,
    int numOfSpys,
    String title,
  })
  get getModeInfo {
    switch (this) {
      case GameModesEnum.classic:
        return (
          title: 'classicModeTitle'.tr(),
          numOfSpys: 1,
          modeDescription: 'classicModeDescription'.tr(),
          iconPath: Assets.imagesClassicIcon,
          backGroundColors: [
            const Color(0xffb2fbff),
            const Color(0xff6a8aff),
          ],
        );
      case GameModesEnum.blind:
        return (
          title: 'blindModeTitle'.tr(),
          numOfSpys: 1,
          modeDescription: 'blindModeDescription'.tr(),
          iconPath: Assets.imagesBlindIcon,
          backGroundColors: [
            const Color(0xffff6a92),
            const Color(0xffe894ff),
          ],
        );
      case GameModesEnum.classicDouble:
        return (
          title: 'classicDouble'.tr(),
          numOfSpys: 2,
          modeDescription: 'classicDouble',
          iconPath: Assets.imagesClassicDoubleIcon,
          backGroundColors: [
            const Color(0xff90d46c),
            const Color(0xff4898ab),
          ],
        );
      case GameModesEnum.blindDouble:
        return (
          title: 'blindDouble'.tr(),
          numOfSpys: 2,
          modeDescription: 'blindDouble',
          iconPath: Assets.imagesBlindDoubleIcon,
          backGroundColors: [
            const Color(0xffffe1a4),
            const Color(0xffff7c90),
          ],
        );
      case GameModesEnum.duo:
        return (
          title: 'Duo'.tr(),
          numOfSpys: 2,
          modeDescription: 'Duo',
          iconPath: Assets.imagesDuoIcon,
          backGroundColors: [
            const Color(0xff2d3f36),
            const Color(0xffffffe8),
          ],
        );
      case GameModesEnum.amongUs:
        return (
          title: 'amongUs'.tr(),
          numOfSpys: 1,
          modeDescription: 'amongUs',
          iconPath: Assets.imagesClassicDoubleIcon,
          backGroundColors: [
            const Color(0xffF6D021),
            const Color(0xffF8DF6E),
            const Color(0xffFBEFCC),
          ],
        );
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
      case GameModesEnum.amongUs:
        return SpeacialPlayers().setupGame();
    }
  }
}

extension HomeCubitX on BuildContext {
  HomeCubit get homeCubit {
    return BlocProvider.of<HomeCubit>(this);
  }
}

extension GameSetupX on BuildContext {
  GameSetupCubit get gameStartCubit {
    return BlocProvider.of<GameSetupCubit>(this);
  }
}

extension PlayersCubitX on BuildContext {
  PlayersCubit get playersCubit {
    return BlocProvider.of<PlayersCubit>(this);
  }
}

extension Size on BuildContext {
  double get hight {
    return MediaQuery.sizeOf(this).height;
  }

  double get width {
    return MediaQuery.sizeOf(this).width;
  }
}

extension IsMobile on BuildContext {
  bool get isMobile {
    return MediaQuery.sizeOf(this).width <= SizeConfig.mobileWidth;
  }
}
