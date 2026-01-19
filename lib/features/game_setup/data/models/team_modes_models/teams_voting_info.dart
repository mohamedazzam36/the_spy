import 'package:the_spy/features/players/data/models/player_model.dart';

class TeamsVotingInfo {
  final int votingPlayerTeamId, shownPlayerId;
  final PlayerModel shownPlayer, votingPlayer;
  bool? playerVote;

  TeamsVotingInfo({
    required this.votingPlayerTeamId,
    required this.shownPlayerId,
    required this.shownPlayer,
    required this.votingPlayer,
  });
}
