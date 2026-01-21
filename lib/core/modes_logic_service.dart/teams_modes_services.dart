import 'dart:math';

import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/extensions/categories_info_extensions.dart';
import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/core/models/teams_player_model.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class TeamsModesServices {
  static void setTeams() {
    TeamsModeSettings.teamsList = [];
    List<PlayerModel> playersList = GameLogicService.getRandomList(AppServices.playersList);
    int remainedPlayersCount = playersList.length % TeamsModeSettings.numOfTeams;
    int playersCountInTeam = (playersList.length / TeamsModeSettings.numOfTeams).toInt();

    for (int i = 0; i < TeamsModeSettings.numOfTeams; i++) {
      TeamsModeSettings.teamsList.add(TeamModel(id: i));

      for (int j = 0; j < playersCountInTeam; j++) {
        TeamsModeSettings.teamsList[i].playersDetails.add(
          TeamsPlayerModel(player: playersList[j], id: i),
        );
      }
      playersList.removeRange(0, playersCountInTeam);
    }

    for (int i = 0; i < remainedPlayersCount; i++) {
      TeamsModeSettings.teamsList[i].playersDetails.add(
        TeamsPlayerModel(player: playersList[i], id: i),
      );
    }
  }

  static void setTeamsShowedWords() {
    List<String> categoryWordsList = List.of(AppServices.currentCategory.getCategoryInfo.namesList);

    for (int i = 0; i < TeamsModeSettings.numOfTeams; i++) {
      String showedword = GameLogicService.getListRandomItem<String>(categoryWordsList);
      TeamsModeSettings.teamsList[i].showedWord = showedword;
      categoryWordsList.remove(showedword);
    }
  }

  static void setTeamsVotingWordsAndOpponentTeamId() {
    List<String> tempTeamVotingWords = GameLogicService.getRandomList(
      AppServices.currentCategory.getCategoryInfo.namesList,
    );
    List<String> teamVotingWords = [];
    List<TeamModel> tempRandomOpponentTeam = [];
    String randomCategoryWord;
    TeamModel randomOpponentTeam;

    for (int i = 0; i < TeamsModeSettings.numOfTeams; i++) {
      tempTeamVotingWords.remove(TeamsModeSettings.teamsList[i].showedWord);
    }

    for (int i = 0; i < TeamsModeSettings.numOfTeams; i++) {
      teamVotingWords.clear();
      tempRandomOpponentTeam = List.of(TeamsModeSettings.teamsList)
        ..remove(TeamsModeSettings.teamsList[i]);
      for (int j = 0; j < 7; j++) {
        randomCategoryWord = GameLogicService.getListRandomItem(tempTeamVotingWords);

        if (!teamVotingWords.contains(randomCategoryWord)) {
          teamVotingWords.add(randomCategoryWord);
        } else {
          j--;
        }
      }
      randomOpponentTeam = GameLogicService.getListRandomItem(tempRandomOpponentTeam);
      teamVotingWords.add(randomOpponentTeam.showedWord);
      TeamsModeSettings.teamsList[i].opponentTeamInfo = (
        id: randomOpponentTeam.id,
        shownWord: randomOpponentTeam.showedWord,
      );
      TeamsModeSettings.teamsList[i].votingWords = List.of(teamVotingWords);
    }
  }

  static void setRandomTeams() {
    final Random random = Random.secure();

    final int playersNum = AppServices.playersList.length;
    final int teamsMaxNum = (playersNum / 2).toInt();
    final int randomNum = random.nextInt(teamsMaxNum);

    if (randomNum == 0) {
      TeamsModeSettings.numOfTeams = randomNum + 2;
    } else {
      TeamsModeSettings.numOfTeams = randomNum + 1;
    }
  }
}
