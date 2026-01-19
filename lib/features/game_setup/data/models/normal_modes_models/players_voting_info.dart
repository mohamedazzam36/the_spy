import 'package:the_spy/features/players/data/models/player_model.dart';

class PlayersVotingInfo {
  final PlayerModel votingPlayer;
  final List<PlayerModel> shownVotingList;
  late List<PlayerModel> votedPlayersList;

  PlayersVotingInfo({
    required this.votingPlayer,
    required this.shownVotingList,
  });
}
