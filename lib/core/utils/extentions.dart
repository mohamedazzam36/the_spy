import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/functions/game_fuctions.dart';
import 'package:the_spy/core/models/game_mode_model.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

extension ModesInfo on GameModesEnum {
  ({Color backGroundColor, String image, String modeDescription, int numOfSpys, String title})
  getModeInfo(BuildContext context) {
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
    }
  }

  void setGameStarting(BuildContext context) {
    switch (this) {
      case GameModesEnum.classic:
        return Classic().setupGame(context);
      case GameModesEnum.blind:
        return Blind().setupGame(context);
      case GameModesEnum.specialPlayers:
        return SpeacialPlayers().setupGame(context);
      case GameModesEnum.classicDouble:
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameModesEnum.blindDouble:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }
}

extension PlayersStateX on PlayersState {
  bool gameStartingStates() {
    return this is PlayerReveal || this is WordReveal || this is PlayersFinished;
  }
}

extension PlayersCubitX on BuildContext {
  GameModeModel get playersGameModeModel {
    return BlocProvider.of<PlayersCubit>(this).gameModeModel;
  }
}
