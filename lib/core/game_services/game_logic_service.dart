import 'dart:math';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/game_setup/data/models/question_pair_model.dart';
import 'package:the_spy/features/game_setup/data/models/players_voting_info.dart';
import 'package:the_spy/features/game_setup/data/models/spys_voting_info.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class GameLogicService {
  static final Random _random = Random();

  static T getListRandomWord<T>(List<T> wordsList) {
    return wordsList[_random.nextInt(wordsList.length)];
  }

  static List<T> getRandomList<T>(List<T> list) {
    return List<T>.from(list)..shuffle(_random);
  }

  static List<QuestionPair> setAskPairs() {
    List<PlayerModel> askingPlayers = GameLogicService.getRandomList(playersModel.playersList);
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
    List<PlayerModel> votingList = playersModel.playersList;
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

  static void setPlayersScore(
    List<PlayersVotingInfo> playersVotingInfo,
  ) {
    for (int i = 0; i < playersVotingInfo.length; i++) {
      for (int j = 0; j < playersModel.spysList.length; j++) {
        for (int k = 0; k < playersVotingInfo[i].votedPlayersList.length; k++) {
          if (playersVotingInfo[i].votedPlayersList[k].name == playersModel.spysList[j].name) {
            playersVotingInfo[i].votingPlayer.score++;
          }
        }
      }
    }
  }

  static List<SpysVotingInfo> setSpysVotingInfo() {
    return playersModel.spysList
        .map(
          (e) => SpysVotingInfo(theSpy: e),
        )
        .toList();
  }

  static void setSpysScore(List<SpysVotingInfo> spysVotingInfo) {
    for (int i = 0; i < spysVotingInfo.length; i++) {
      if (spysVotingInfo[i].votedWord == playersModel.playersShowedWord) {
        spysVotingInfo[i].theSpy.score++;
      }
    }
  }
}
