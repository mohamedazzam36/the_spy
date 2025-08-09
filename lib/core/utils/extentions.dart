import 'package:flutter/material.dart';
import 'package:the_spy/core/game_logic_service/game_logic_service.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
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

  String getSpyWord(BuildContext context, List<PlayerModel> playersList) {
    switch (this) {
      case GameModesEnum.classic:
        return S.of(context).hide;
      case GameModesEnum.blind:
        return GameLogicService.getRandomCategoryWord(context);
      case GameModesEnum.specialPlayers:
        return GameLogicService.getRandomPlayer(playersList).name;
      case GameModesEnum.classicDouble:
        // TODO: Handle this case.
        throw UnimplementedError();
      case GameModesEnum.blindDouble:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  String getShowedWord(BuildContext context, List<PlayerModel> playersList) {
    switch (this) {
      case GameModesEnum.classic:
      case GameModesEnum.blind:
        accessPlayerCubit(context).showedWord = GameLogicService.getRandomCategoryWord(context);
        return accessPlayerCubit(context).showedWord!;

      case GameModesEnum.specialPlayers:
        accessPlayerCubit(context).showedWord = GameLogicService.getRandomPlayer(playersList).name;
        return accessPlayerCubit(context).showedWord!;
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
