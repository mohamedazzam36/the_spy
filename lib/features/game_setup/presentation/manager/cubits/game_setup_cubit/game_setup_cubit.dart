import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/game_logic_service/game_logic_service.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/game_setup/data/models/question_pair_model.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

part 'game_setup_state.dart';

class GameSetupCubit extends Cubit<GameSetupState> {
  GameSetupCubit() : super(GameStartInitial());

  late List<QuestionPair> questionPairs;
  int currentPlayerIndex = 0;
  int currentQuestionIndex = 0;

  void startGame() {
    currentPlayerIndex = 0;
    currentQuestionIndex = 0;

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
    questionPairs = GameLogicService.setAskingAndAskedPlayers();

    emit(
      QuestionsRound(
        askedPlayer: questionPairs[currentQuestionIndex].askedPlayer.name,
        askingPlayer: questionPairs[currentQuestionIndex].askingPlayer.name,
      ),
    );
    currentQuestionIndex++;
  }

  void getNextQuestion() {
    if (currentQuestionIndex >= questionPairs.length) {
      return;
    }

    emit(
      QuestionsRound(
        askedPlayer: questionPairs[currentQuestionIndex].askedPlayer.name,
        askingPlayer: questionPairs[currentQuestionIndex].askingPlayer.name,
      ),
    );
    currentQuestionIndex++;
  }
}
