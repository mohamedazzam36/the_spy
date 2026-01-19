import 'package:flutter/material.dart';
import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_members_reveal_list_view_item.dart';

class TeamsMembersRevealListView extends StatelessWidget {
  const TeamsMembersRevealListView({super.key, required this.teamsInfo});
  final List<TeamModel> teamsInfo;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: teamsInfo.length,
      itemBuilder: (context, index) => TeamsMembersRevealListViewItem(teamInfo: teamsInfo[index]),
    );
  }
}
