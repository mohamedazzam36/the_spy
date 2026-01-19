import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/features/game_setup/data/models/team_modes_models/teams_word_voting_info.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/team_result_grid_view_item.dart';

class TeamResultGridView extends StatelessWidget {
  const TeamResultGridView({super.key, required this.teamsVotingInfo});

  final List<TeamsWordVotingInfo> teamsVotingInfo;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        mainAxisExtent: context.isMobile ? 340 : 500,
      ),
      itemCount: teamsVotingInfo.length,
      itemBuilder: (context, index) {
        return TeamResultGridViewItem(
          team: teamsVotingInfo[index].team,
          votedWord: teamsVotingInfo[index].votedWord,
          isVotingTrue:
              teamsVotingInfo[index].votedWord ==
              teamsVotingInfo[index].team.opponentTeamInfo.shownWord,
        );
      },
    );
  }
}
