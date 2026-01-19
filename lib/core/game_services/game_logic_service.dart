import 'dart:math';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/features/game_setup/data/models/normal_modes_models/players_voting_info.dart';
import 'package:the_spy/features/game_setup/data/models/question_pair_model.dart';
import 'package:the_spy/features/game_setup/data/models/normal_modes_models/spys_voting_info.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class GameLogicService {
  static final Random _random = Random.secure();

  static T getListRandomItem<T>(List<T> itemsList) {
    final shuffledList = List<T>.from(itemsList);
    for (int i = 0; i < 2; i++) {
      shuffledList.shuffle(_random);
    }
    return shuffledList[_random.nextInt(shuffledList.length)];
  }

  static List<T> getRandomList<T>(List<T> list) {
    final shuffledList = List<T>.from(list);
    for (int i = 0; i < 3; i++) {
      shuffledList.shuffle(_random);
    }
    return shuffledList;
  }

  static List<PlayerModel> getSortedPlayersList(List<PlayerModel> list) {
    return list..sort((a, b) => b.score.compareTo(a.score));
  }

  static List<QuestionPair> setAskPairs() {
    List<PlayerModel> askingPlayers = GameLogicService.getRandomList(
      AppServices.playersList,
    );
    List<PlayerModel> askedPlayers = List.from(askingPlayers);
    List<QuestionPair> questionPairs = [];
    bool isListValid = false;

    while (!isListValid) {
      askedPlayers = GameLogicService.getRandomList(askedPlayers);
      isListValid = true;

      for (int i = 0; i < askingPlayers.length; i++) {
        if (askedPlayers[i].name == askingPlayers[i].name) {
          isListValid = false;
          break;
        }
      }
    }
    for (int i = 0; i < askingPlayers.length; i++) {
      questionPairs.add(QuestionPair(askingPlayer: askingPlayers[i], askedPlayer: askedPlayers[i]));
    }
    return questionPairs;
  }

  static List<PlayersVotingInfo> setPlayersVotingInfo() {
    List<PlayerModel> votingList = AppServices.playersList;
    List<PlayersVotingInfo> votingPairs;

    votingPairs = votingList
        .map(
          (e) => PlayersVotingInfo(
            votingPlayer: e,
            shownVotingList: List.from(votingList)..remove(e),
          ),
        )
        .toList();

    return votingPairs;
  }

  static void resetPlayersScore() {
    for (var player in AppServices.playersList) {
      player.score = 0;
    }
  }

  static void setPlayersScore(
    List<PlayersVotingInfo> playersVotingInfo,
  ) {
    for (int i = 0; i < playersVotingInfo.length; i++) {
      for (int j = 0; j < NormalModeSettings.spysList.length; j++) {
        for (int k = 0; k < playersVotingInfo[i].votedPlayersList.length; k++) {
          if (playersVotingInfo[i].votedPlayersList[k].name ==
              NormalModeSettings.spysList[j].name) {
            playersVotingInfo[i].votingPlayer.score++;
          }
        }
      }
    }
  }

  static List<SpysVotingInfo> setSpysVotingInfo() {
    return NormalModeSettings.spysList
        .map(
          (e) => SpysVotingInfo(theSpy: e),
        )
        .toList();
  }

  static void setSpysScore(List<SpysVotingInfo> spysVotingInfo) {
    for (int i = 0; i < spysVotingInfo.length; i++) {
      if (spysVotingInfo[i].votedWord == NormalModeSettings.playersShowedWord) {
        spysVotingInfo[i].theSpy.score++;
      }
    }
  }
}
