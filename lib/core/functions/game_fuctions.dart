import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:the_spy/core/game_logic_service/game_logic_service.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class GameModeFuctions {
  void setupGame(BuildContext context) {
    setPlayersShowedWord(context);

    setSpysShowedWord(context);

    setSpysList(context);
  }

  setPlayersShowedWord(BuildContext context);

  setSpysShowedWord(BuildContext context);

  setSpysList(BuildContext context);
}

class Blind extends GameModeFuctions {
  @override
  setPlayersShowedWord(BuildContext context) {
    List<String> categoryWordsList = accessAppCubit(context).currentCategoryNames!;
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    accessPlayerCubit(context).gameModeModel.playersShowedWord = showedword;
  }

  @override
  setSpysShowedWord(BuildContext context) {
    final playersShowedWord = accessPlayerCubit(context).gameModeModel.playersShowedWord;

    List<String> categoryWordsList = accessAppCubit(context).currentCategoryNames!;
    List<String> spysShowedList = List.from(categoryWordsList)..remove(playersShowedWord);
    String spysShowedWord = GameLogicService.getListRandomWord<String>(spysShowedList);

    accessPlayerCubit(context).gameModeModel.spysShowedWord = spysShowedWord;
  }

  @override
  setSpysList(BuildContext context) {
    GameLogicService.setOneSpy(context);
  }
}

class SpeacialPlayers extends GameModeFuctions {
  @override
  setPlayersShowedWord(BuildContext context) {
    List<PlayerModel> playersList = accessPlayerCubit(context).gameModeModel.playersList;

    PlayerModel playersShowedPlayer = GameLogicService.getListRandomWord<PlayerModel>(
      playersList,
    );

    accessPlayerCubit(context).gameModeModel.playersShowedWord = playersShowedPlayer.name;
  }

  @override
  setSpysShowedWord(BuildContext context) {
    String playersShowedWord = accessPlayerCubit(context).gameModeModel.playersShowedWord;

    List<PlayerModel> playersList = accessPlayerCubit(context).gameModeModel.playersList;
    List<String> spysShowedList =
        playersList
            .map(
              (e) => e.name,
            )
            .toList()
          ..remove(playersShowedWord);
    String spysShowedPlayer = GameLogicService.getListRandomWord(
      spysShowedList,
    );

    accessPlayerCubit(context).gameModeModel.spysShowedWord = spysShowedPlayer;
  }

  @override
  setSpysList(BuildContext context) {
    GameLogicService.setOneSpy(context);
  }
}

class Classic extends GameModeFuctions {
  @override
  setPlayersShowedWord(BuildContext context) {
    List<String> categoryWordsList = accessAppCubit(context).currentCategoryNames!;
    String showedword = GameLogicService.getListRandomWord<String>(categoryWordsList);

    accessPlayerCubit(context).gameModeModel.playersShowedWord = showedword;
  }

  @override
  setSpysShowedWord(BuildContext context) {
    accessPlayerCubit(context).gameModeModel.spysShowedWord = 'hide'.tr();
  }

  @override
  setSpysList(BuildContext context) {
    GameLogicService.setOneSpy(context);
  }
}
