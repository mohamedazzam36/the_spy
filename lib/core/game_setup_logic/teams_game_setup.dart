import 'package:the_spy/core/game_services/modes_service.dart';
import 'package:the_spy/core/modes_logic_service.dart/teams_modes_services.dart';

class TeamsGameSetup {
  void setup() {
    ModesService.setPlayersRandomList();

    setTeams();

    setTeamsShowedWords();

    setTeamsVotingWordsAndOpponentTeamId();
  }

  void setTeams() {
    TeamsModesServices.setTeams();
  }

  void setTeamsShowedWords() {
    TeamsModesServices.setTeamsShowedWords();
  }

  void setTeamsVotingWordsAndOpponentTeamId() {
    TeamsModesServices.setTeamsVotingWordsAndOpponentTeamId();
  }
}
