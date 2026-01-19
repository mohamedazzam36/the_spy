import 'package:the_spy/core/game_services/game_logic_service.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/core/models/teams_player_model.dart';
import 'package:the_spy/features/game_setup/data/models/team_modes_models/showed_word_model.dart';
import 'package:the_spy/features/game_setup/data/models/team_modes_models/teams_voting_info.dart';
import 'package:the_spy/features/game_setup/data/models/team_modes_models/teams_word_voting_info.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

abstract class TeamsGameLogicService {
  static List<ShowedWordPair> setShowedWordsPairs() {
    List<ShowedWordPair> showedWordPairs = [];
    for (int i = 0; i < TeamsModeSettings.numOfTeams; i++) {
      for (int j = 0; j < TeamsModeSettings.teamsList[i].playersDetails.length; j++) {
        showedWordPairs.add(
          ShowedWordPair(
            player: TeamsModeSettings.teamsList[i].playersDetails[j].player,
            teamId: TeamsModeSettings.teamsList[i].id,
            showedWord: TeamsModeSettings.teamsList[i].showedWord,
          ),
        );
      }
    }
    return GameLogicService.getRandomList(showedWordPairs);
  }

  static List<TeamsVotingInfo> setTeamsVotingInfo() {
    List<TeamsVotingInfo> votingPairs = [];
    List<TeamsPlayerModel> allTeamsPlayersList = [];
    TeamsPlayerModel shownPlayerDetails;

    for (var team in TeamsModeSettings.teamsList) {
      for (var player in team.playersDetails) {
        allTeamsPlayersList.add(player);
      }
    }

    for (var currentPlayerDetails in allTeamsPlayersList) {
      shownPlayerDetails = GameLogicService.getListRandomItem(
        List.of(allTeamsPlayersList)..remove(currentPlayerDetails),
      );
      votingPairs.add(
        TeamsVotingInfo(
          votingPlayerTeamId: currentPlayerDetails.id,
          shownPlayer: shownPlayerDetails.player,
          votingPlayer: currentPlayerDetails.player,
          shownPlayerId: shownPlayerDetails.id,
        ),
      );
    }

    return votingPairs;
  }

  static void calcTeamsInitVoting(List<TeamsVotingInfo> teamsVotingInfo) {
    TeamModel currentTeam;
    PlayerModel currentPlayer;
    TeamsVotingInfo currentVote;

    for (int i = 0; i < TeamsModeSettings.numOfTeams; i++) {
      currentTeam = TeamsModeSettings.teamsList[i];
      for (int j = 0; j < currentTeam.playersDetails.length; j++) {
        currentPlayer = currentTeam.playersDetails[j].player;
        for (int k = 0; k < teamsVotingInfo.length; k++) {
          currentVote = teamsVotingInfo[k];
          if (currentVote.votingPlayer.name == currentPlayer.name) {
            if (currentVote.playerVote == null) break;
            if ((currentVote.shownPlayerId == currentTeam.playersDetails[j].id) ==
                currentVote.playerVote) {
              currentTeam.playersDetails[j].score++;
              currentTeam.score++;
            }
          }
        }
      }
    }
  }

  static List<TeamsWordVotingInfo> setTeamsWordVotingInfo() {
    return TeamsModeSettings.teamsList
        .map(
          (e) => TeamsWordVotingInfo(team: e),
        )
        .toList();
  }

  static void setTeamsScore(List<TeamsWordVotingInfo> teamsWordVotingInfo) {
    for (var votingInfo in teamsWordVotingInfo) {
      for (var team in TeamsModeSettings.teamsList) {
        if (team.id == votingInfo.team.id) {
          if (votingInfo.votedWord == team.opponentTeamInfo.shownWord) team.score++;
        }
      }
    }
  }

  static void setPlayersScore() {
    for (var team in TeamsModeSettings.teamsList) {
      for (var player in team.playersDetails) {
        player.player.score += team.score;
      }
    }
  }

  static void sortTeamsAndPlayers() {
    TeamsModeSettings.teamsList = getSortedTeamsList(TeamsModeSettings.teamsList);
    for (var team in TeamsModeSettings.teamsList) {
      team.playersDetails = getSortedPlayersList(team.playersDetails);
    }
  }

  static List<TeamsWordVotingInfo> getSortedVotingList(List<TeamsWordVotingInfo> list) {
    return list..sort((a, b) => b.team.score.compareTo(a.team.score));
  }

  static List<TeamsPlayerModel> getSortedPlayersList(List<TeamsPlayerModel> list) {
    return list..sort((a, b) => b.score.compareTo(a.score));
  }

  static List<TeamModel> getSortedTeamsList(List<TeamModel> list) {
    return list..sort((a, b) => b.score.compareTo(a.score));
  }
}
