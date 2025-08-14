import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard_list_view_item.dart';

class LeaderboardListView extends StatelessWidget {
  const LeaderboardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return leaderboardBox.values.isNotEmpty
        ? ListView.builder(
            itemCount: leaderboardBox.values.length,
            itemBuilder: (context, index) {
              return LeaderboardListViewItem(
                playerName: leaderboardBox.keys.toList()[index],
                playerScore: leaderboardBox.values.toList()[index],
              );
            },
          )
        : const Text('empty');
  }
}
