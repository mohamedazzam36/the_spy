import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/game_setup/data/models/team_modes_models/teams_word_voting_info.dart';
import 'package:the_spy/features/game_setup/presentation/views/result_header_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/team_result_grid_view.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_members_reveal_list_view.dart';

class TeamResultWidget extends StatelessWidget {
  const TeamResultWidget({super.key, required this.teamVotingInfo});

  final List<TeamsWordVotingInfo> teamVotingInfo;

  @override
  Widget build(BuildContext context) {
    return MainBackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            const ResultHeaderWidget(),
            TeamResultGridView(teamsVotingInfo: teamVotingInfo),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            TeamsMembersRevealListView(
              teamsInfo: teamVotingInfo
                  .map(
                    (e) => e.team,
                  )
                  .toList(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomSmallTextButton(
                text: 'replay'.tr(),
                onPressed: () {
                  context.pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
