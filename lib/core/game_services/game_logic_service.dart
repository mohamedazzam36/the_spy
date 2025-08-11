import 'dart:math';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/game_setup/data/models/question_pair_model.dart';
import 'package:the_spy/features/game_setup/data/models/vote_pair_model.dart';
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

  static List<VotingPair> setVotingpairs() {
    List<PlayerModel> votingList = playersModel.playersList;
    List<VotingPair> votingPairs = [];

    for (int i = 0; i < votingList.length; i++) {
      votingPairs.add(
        VotingPair(
          votingPlayer: votingList[i],
          votingList: List.from(votingList)..remove(votingList[i]),
        ),
      );
    }

    return votingPairs;
  }

  static void setPlayersScore(
    List<PlayerModel> votedPlayers,
    List<VotingPair> votingPairs,
    int currentVotingIndex,
  ) {
    for (int i = 0; i < votedPlayers.length; i++) {
      for (int j = 0; j < playersModel.spysList.length; j++) {
        if (votedPlayers[i].name == playersModel.spysList[j].name) {
          votingPairs[currentVotingIndex - 1].votingPlayer.score++;
        }
      }
    }
  }
}
