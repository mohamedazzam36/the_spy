import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/repos/game_repo_impl.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/game_setup_cubit.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

extension ModesInfo on GameModesEnum {
  ({Color backGroundColor, String image, String modeDescription, int numOfSpys, String title})
  get getModeInfo {
    switch (this) {
      case GameModesEnum.classic:
        return (
          title: 'classicModeTitle'.tr(),
          numOfSpys: 1,
          modeDescription: 'classicModeDescription'.tr(),
          image: 'image',
          backGroundColor: kBlackColor,
        );
      case GameModesEnum.blind:
        return (
          title: 'blindModeTitle'.tr(),
          numOfSpys: 1,
          modeDescription: 'blindModeDescription'.tr(),
          image: 'image',
          backGroundColor: kWhiteColor,
        );
      case GameModesEnum.specialPlayers:
        return (
          title: 'specialPlayers',
          numOfSpys: 1,
          modeDescription: 'specialPlayers',
          image: 'image',
          backGroundColor: kBlackColor,
        );
      case GameModesEnum.classicDouble:
        return (
          title: 'classicDouble',
          numOfSpys: 2,
          modeDescription: 'classicDouble',
          image: 'classicDouble',
          backGroundColor: kBlackColor,
        );
      case GameModesEnum.blindDouble:
        return (
          title: 'blindDouble',
          numOfSpys: 2,
          modeDescription: 'blindDouble',
          image: 'blindDouble',
          backGroundColor: kBlackColor,
        );
      case GameModesEnum.duo:
        return (
          title: 'Duo',
          numOfSpys: 2,
          modeDescription: 'Duo',
          image: 'classicDouble',
          backGroundColor: kBlackColor,
        );
    }
  }

  void get setGameStarting {
    switch (this) {
      case GameModesEnum.classic:
        return Classic().setupGame();
      case GameModesEnum.blind:
        return Blind().setupGame();
      case GameModesEnum.specialPlayers:
        return SpeacialPlayers().setupGame();
      case GameModesEnum.classicDouble:
        Classic().setupGame();
      case GameModesEnum.blindDouble:
        Blind().setupGame();
      case GameModesEnum.duo:
        Duo().setupGame();
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
