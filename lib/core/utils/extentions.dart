import 'package:flutter/material.dart';
import 'package:the_spy/core/functions/game_fuctions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';
import 'package:the_spy/generated/l10n.dart';

extension ModesInfo on GameModesEnum {
  ({Color backGroundColor, String image, String modeDescription, int numOfSpys, String title})
  getModeInfo(BuildContext context) {
    switch (this) {
      case GameModesEnum.classic:
        return (
          title: S.of(context).classicModeTitle,
          numOfSpys: 1,
          modeDescription: S.of(context).classicModeDescription,
          image: 'image',
          backGroundColor: kBlackColor,
        );
      case GameModesEnum.blind:
        return (
          title: S.of(context).blindModeTitle,
          numOfSpys: 1,
          modeDescription: S.of(context).blindModeDescription,
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

  String spysShowedWord(BuildContext context) {
    switch (this) {
      case GameModesEnum.classic:
        accessPlayerCubit(context).gameModeModel.spysShowedWord = S.of(context).hide;
        return S.of(context).hide;
      case GameModesEnum.blind:
        return accessPlayerCubit(context).gameModeModel.spysShowedWord;
      case GameModesEnum.specialPlayers:
        return accessPlayerCubit(context).gameModeModel.spysShowedWord;
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
