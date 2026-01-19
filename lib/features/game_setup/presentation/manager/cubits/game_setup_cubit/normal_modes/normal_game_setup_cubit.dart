import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/app_services/leaderboard_service.dart';
import 'package:the_spy/core/extensions/sub_game_modes_extensions.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/features/game_setup/data/models/normal_modes_models/players_voting_info.dart';
import 'package:the_spy/features/game_setup/data/models/question_pair_model.dart';
import 'package:the_spy/features/game_setup/data/models/normal_modes_models/spys_voting_info.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

part 'normal_game_setup_state.dart';

class NormalGameSetupCubit extends Cubit<NormalGameSetupState> {
  NormalGameSetupCubit() : super(GameStartInitial());

  late List<QuestionPair> questionPairs;
  late List<PlayersVotingInfo> playersVotingInfo;
  late List<SpysVotingInfo> spysVotingInfo;
  int _currentPlayerIndex = 0;
  int _currentQuestionIndex = 0;
  int _currentVotingIndex = 0;
  int _currentSpyIndex = 0;

  void startGame() {
    _currentPlayerIndex = 0;

    AppServices.currentSubMode.setGameStarting();

    emit(
      PlayerReveal(
        currentPlayer: AppServices.playersList[_currentPlayerIndex],
        prevPlayer: null,
      ),
    );
  }

  void switchBetweenPlayersAndWord() {
    if (_currentPlayerIndex >= AppServices.playersList.length) {
      setAskingAndAskedPlayers();
      return;
    }

    final currentPlayer = AppServices.playersList[_currentPlayerIndex];
    final prevPlayer = _currentPlayerIndex == 0
        ? null
        : AppServices.playersList[_currentPlayerIndex - 1];

    if (state is PlayerReveal) {
      final isSpy = NormalModeSettings.spysList.any((spy) => spy.name == currentPlayer.name);

      emit(
        WordReveal(
          isSpy ? NormalModeSettings.spysShowedWord : NormalModeSettings.playersShowedWord,
        ),
      );
      _currentPlayerIndex++;
    } else {
      emit(PlayerReveal(currentPlayer: currentPlayer, prevPlayer: prevPlayer));
    }
  }

  void setAskingAndAskedPlayers() {
    _currentQuestionIndex = 0;

    questionPairs = GameLogicService.setAskPairs();

    emit(
      QuestionsReveal(
        askedPlayer: questionPairs[_currentQuestionIndex].askedPlayer.name,
        askingPlayer: questionPairs[_currentQuestionIndex].askingPlayer.name,
      ),
    );
    _currentQuestionIndex++;
  }

  void getNextQuestion() {
    if (_currentQuestionIndex >= questionPairs.length) {
      emit(QuestionsFinish());
      return;
    }

    emit(
      QuestionsReveal(
        askedPlayer: questionPairs[_currentQuestionIndex].askedPlayer.name,
        askingPlayer: questionPairs[_currentQuestionIndex].askingPlayer.name,
      ),
    );
    _currentQuestionIndex++;
  }

  void setVotingPairs() {
    _currentVotingIndex = 0;
    playersVotingInfo = GameLogicService.setPlayersVotingInfo();
    emit(
      VotingReveal(
        votingPlayer: playersVotingInfo[_currentVotingIndex].votingPlayer,
        votingList: playersVotingInfo[_currentVotingIndex].shownVotingList,
      ),
    );
  }

  void getNextPlayerVote(List<PlayerModel> votedPlayers) {
    if (_currentVotingIndex >= playersVotingInfo.length - 1) {
      playersVotingInfo[_currentVotingIndex].votedPlayersList = votedPlayers;

      emit(Votingfinish());
      return;
    }

    playersVotingInfo[_currentVotingIndex].votedPlayersList = votedPlayers;
    _currentVotingIndex++;

    resetTime();
    emit(
      VotingReveal(
        votingPlayer: playersVotingInfo[_currentVotingIndex].votingPlayer,
        votingList: playersVotingInfo[_currentVotingIndex].shownVotingList,
      ),
    );
  }

  void setSpyVotingInfo() {
    _currentSpyIndex = 0;
    spysVotingInfo = GameLogicService.setSpysVotingInfo();
    emit(SpysSelectionWords(spyName: spysVotingInfo[_currentSpyIndex].theSpy.name));
  }

  void getNextSpyVote(String votedWord) {
    if (_currentSpyIndex >= NormalModeSettings.spysList.length - 1) {
      spysVotingInfo[_currentSpyIndex].votedWord = votedWord;
      GameLogicService.resetPlayersScore();
      GameLogicService.setPlayersScore(playersVotingInfo);
      GameLogicService.setSpysScore(spysVotingInfo);
      emit(ResultsShown(spysVotingInfo: spysVotingInfo));
      LeaderboardService.updateLeaderBoard();
      return;
    }
    resetTime();
    spysVotingInfo[_currentSpyIndex].votedWord = votedWord;
    _currentSpyIndex++;
    emit(SpysSelectionWords(spyName: spysVotingInfo[_currentSpyIndex].theSpy.name));
  }

  void resetTime() {
    emit(ResetTime());
  }

  void endTime() {
    emit(TimeIsUp());
  }
}
