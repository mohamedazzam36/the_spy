import 'package:the_spy/features/players/data/models/player_model.dart';

class VotingPair {
  final PlayerModel votingPlayer;
  final List<PlayerModel> votingList;

  const VotingPair({required this.votingPlayer, required this.votingList});
}
