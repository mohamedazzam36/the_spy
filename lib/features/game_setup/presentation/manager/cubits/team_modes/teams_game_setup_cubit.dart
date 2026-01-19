import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/app_services/leaderboard_service.dart';
import 'package:the_spy/core/extensions/sub_game_modes_extensions.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/game_services/teams_game_logic_service.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/features/game_setup/data/models/question_pair_model.dart';
import 'package:the_spy/features/game_setup/data/models/team_modes_models/showed_word_model.dart';
import 'package:the_spy/features/game_setup/data/models/team_modes_models/teams_voting_info.dart';
import 'package:the_spy/features/game_setup/data/models/team_modes_models/teams_word_voting_info.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

part 'teams_game_setup_state.dart';

class TeamsGameSetupCubit extends Cubit<TeamsGameSetupState> {
  TeamsGameSetupCubit() : super(GameStartInitial());

  late List<QuestionPair> questionPairs;
  late List<TeamsVotingInfo> teamsVotingInfo;
  late List<TeamsWordVotingInfo> teamsWordVotingInfo;
  late List<ShowedWordPair> wordsPairs;
  late PlayerModel prevPlayer;
  int _currentWordPairIndex = 0;
  int _currentQuestionIndex = 0;
  int _currentVotingIndex = 0;
  int _currentTeamIndex = 0;

  void startGame() {
    _currentWordPairIndex = 0;

    AppServices.currentSubMode.setGameStarting();
    wordsPairs = TeamsGameLogicService.setShowedWordsPairs();

    emit(
      TeamsPlayerReveal(
        currentPlayer: wordsPairs[_currentWordPairIndex].player,
        prevPlayer: null,
      ),
    );
  }

  void switchBetweenPlayersAndWord() {
    if (_currentWordPairIndex >= wordsPairs.length) {
      setAskingAndAskedPlayers();
      return;
    }

    var currentWordPair = wordsPairs[_currentWordPairIndex];
    final currentPlayer = wordsPairs[_currentWordPairIndex].player;

    if (state is TeamsPlayerReveal) {
      prevPlayer = currentPlayer;

      emit(TeamsWordReveal(currentWordPair.showedWord, currentWordPair.teamId));

      _currentWordPairIndex++;
    } else {
      emit(TeamsPlayerReveal(currentPlayer: currentPlayer, prevPlayer: prevPlayer));
    }
  }

  void setAskingAndAskedPlayers() {
    _currentQuestionIndex = 0;

    questionPairs = GameLogicService.setAskPairs();

    emit(
      TeamsQuestionsReveal(
        askedPlayer: questionPairs[_currentQuestionIndex].askedPlayer.name,
        askingPlayer: questionPairs[_currentQuestionIndex].askingPlayer.name,
      ),
    );
    _currentQuestionIndex++;
  }

  void getNextQuestion() {
    if (_currentQuestionIndex >= questionPairs.length) {
      emit(TeamsQuestionsFinish());
      return;
    }

    emit(
      TeamsQuestionsReveal(
        askedPlayer: questionPairs[_currentQuestionIndex].askedPlayer.name,
        askingPlayer: questionPairs[_currentQuestionIndex].askingPlayer.name,
      ),
    );
    _currentQuestionIndex++;
  }

  void setVotingPairs() {
    _currentVotingIndex = 0;
    teamsVotingInfo = TeamsGameLogicService.setTeamsVotingInfo();
    emit(
      TeamsVotingReveal(
        shownPlayer: teamsVotingInfo[_currentVotingIndex].shownPlayer,
        votingPlayer: teamsVotingInfo[_currentVotingIndex].votingPlayer,
      ),
    );
  }

  void getNextPlayerVote(bool? isVotedTrue) {
    if (_currentVotingIndex >= teamsVotingInfo.length - 1) {
      teamsVotingInfo[_currentVotingIndex].playerVote = isVotedTrue;

      TeamsGameLogicService.calcTeamsInitVoting(teamsVotingInfo);
      TeamsGameLogicService.sortTeamsAndPlayers();

      emit(TeamsVotingfinish(teamsInfo: TeamsModeSettings.teamsList));
      return;
    }

    teamsVotingInfo[_currentVotingIndex].playerVote = isVotedTrue;
    _currentVotingIndex++;

    resetTime();
    emit(
      TeamsVotingReveal(
        shownPlayer: teamsVotingInfo[_currentVotingIndex].shownPlayer,
        votingPlayer: teamsVotingInfo[_currentVotingIndex].votingPlayer,
      ),
    );
  }

  void setTeamsWordVotingInfo() {
    _currentTeamIndex = 0;
    teamsWordVotingInfo = TeamsGameLogicService.setTeamsWordVotingInfo();
    emit(TeamsSelectionWords(currentTeam: teamsWordVotingInfo[_currentTeamIndex].team));
  }

  void getNextTeamVote(String votedWord) {
    if (_currentTeamIndex >= TeamsModeSettings.numOfTeams - 1) {
      teamsWordVotingInfo[_currentTeamIndex].votedWord = votedWord;
      GameLogicService.resetPlayersScore();
      TeamsGameLogicService.setTeamsScore(teamsWordVotingInfo);
      TeamsGameLogicService.setPlayersScore();
      teamsWordVotingInfo = TeamsGameLogicService.getSortedVotingList(teamsWordVotingInfo);

      emit(TeamsResultsShown(teamsWordVotingInfo: teamsWordVotingInfo));
      LeaderboardService.updateLeaderBoard();
      return;
    }
    resetTime();
    teamsWordVotingInfo[_currentTeamIndex].votedWord = votedWord;
    _currentTeamIndex++;
    emit(TeamsSelectionWords(currentTeam: teamsWordVotingInfo[_currentTeamIndex].team));
  }

  void resetTime() {
    emit(TeamsResetTime());
  }

  void endTime() {
    emit(TeamsTimeIsUp());
  }
}
