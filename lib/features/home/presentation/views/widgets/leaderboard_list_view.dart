import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/leaderboard_service.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard_list_view_item.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class LeaderboardListView extends StatefulWidget {
  const LeaderboardListView({super.key});

  @override
  State<LeaderboardListView> createState() => _LeaderboardListViewState();
}

class _LeaderboardListViewState extends State<LeaderboardListView> {
  late List<PlayerModel> playersList;
  @override
  void initState() {
    playersList = LeaderboardService.fetchLeaderboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return leaderboardBox.values.isNotEmpty
        ? ListView.builder(
            itemCount: leaderboardBox.values.length,
            itemBuilder: (context, index) {
              return LeaderboardListViewItem(
                playerName: playersList[index].name,
                playerScore: playersList[index].score,
              );
            },
          )
        : const Text('empty');
  }
}
