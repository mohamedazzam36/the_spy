import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/game_setup/data/models/question_pair_model.dart';
import 'package:the_spy/features/game_setup/data/models/vote_pair_model.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

part 'game_setup_state.dart';

class GameSetupCubit extends Cubit<GameSetupState> {
  GameSetupCubit() : super(GameStartInitial());

  late List<QuestionPair> questionPairs;
  late List<VotingPair> votingPairs;
  int currentPlayerIndex = 0;
  int currentQuestionIndex = 0;
  int currentVotingIndex = 0;

  void startGame() {
    currentPlayerIndex = 0;

    appServices.currentMode.setGameStarting;
    emit(PlayerReveal(player: playersModel.playersList[currentPlayerIndex]));
  }

  void switchBetweenPlayersAndWord() {
    if (currentPlayerIndex >= playersModel.playersList.length) {
      setAskingAndAskedPlayers();
      return;
    }

    final currentPlayer = playersModel.playersList[currentPlayerIndex];

    if (state is PlayerReveal) {
      final isSpy = playersModel.spysList.any((spy) => spy.name == currentPlayer.name);

      emit(WordReveal(isSpy ? playersModel.spysShowedWord : playersModel.playersShowedWord));
      currentPlayerIndex++;
    } else {
      emit(PlayerReveal(player: currentPlayer));
    }
  }

  void setAskingAndAskedPlayers() {
    currentQuestionIndex = 0;

    questionPairs = GameLogicService.setAskPairs();

    emit(
      QuestionsReveal(
        askedPlayer: questionPairs[currentQuestionIndex].askedPlayer.name,
        askingPlayer: questionPairs[currentQuestionIndex].askingPlayer.name,
      ),
    );
    currentQuestionIndex++;
  }

  void getNextQuestion() {
    if (currentQuestionIndex >= questionPairs.length) {
      emit(QuestionsFinish());
      return;
    }

    emit(
      QuestionsReveal(
        askedPlayer: questionPairs[currentQuestionIndex].askedPlayer.name,
        askingPlayer: questionPairs[currentQuestionIndex].askingPlayer.name,
      ),
    );
    currentQuestionIndex++;
  }

  void setVotingPairs() {
    currentVotingIndex = 0;
    votingPairs = GameLogicService.setVotingpairs();
    emit(
      VotingReveal(
        votingPlayer: votingPairs[currentVotingIndex].votingPlayer,
        votingList: votingPairs[currentVotingIndex].votingList,
      ),
    );
    currentVotingIndex++;
  }

  void getNextVote(List<PlayerModel> votedPlayers) {
    if (currentVotingIndex >= votingPairs.length) {
      GameLogicService.setPlayersScore(votedPlayers, votingPairs, currentVotingIndex);

      for (var element in playersModel.playersList) {
        log('${element.name} : ${element.score}');
      }
      emit(Votingfinish());
      return;
    }
    GameLogicService.setPlayersScore(votedPlayers, votingPairs, currentVotingIndex);

    emit(
      VotingReveal(
        votingPlayer: votingPairs[currentVotingIndex].votingPlayer,
        votingList: votingPairs[currentVotingIndex].votingList,
      ),
    );
    currentVotingIndex++;
  }

  void getSpysShownWords() {
    emit(SpysSelectionWords());
  }
}
