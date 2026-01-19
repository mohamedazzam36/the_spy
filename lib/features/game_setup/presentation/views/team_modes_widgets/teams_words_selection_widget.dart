import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/spys_grid_view_item.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_custom_timer.dart';

class TeamsWordsSelectionWidget extends StatelessWidget {
  const TeamsWordsSelectionWidget({super.key, required this.currentTeam});

  final TeamModel currentTeam;

  @override
  Widget build(BuildContext context) {
    return MainBackgroundContainer(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: TimeService.hasTimer
                ? TeamsCustomTimer(
                    startingTime: TimeService.spysVotingTime,
                    onFinish: () => context.teamsGameStartCubit.getNextTeamVote(''),
                  )
                : const SizedBox(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                spacing: 12,
                children: [
                  Text(
                    '${'team'.tr()}${currentTeam.id + 1}',
                    style: Styles.styleSemiBold60(context).copyWith(color: AppColors.coffeeColor),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '${'select'.tr()} ${'wordOf'.tr()}',
                    style: Styles.styleSemiBold60(context),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '${'team'.tr()}${currentTeam.opponentTeamInfo.id + 1}',
                    style: Styles.styleSemiBold60(context).copyWith(color: Colors.redAccent),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 3,
              crossAxisCount: 2,
            ),
            itemCount: currentTeam.votingWords.length,
            itemBuilder: (context, index) {
              return SpysGridViewItem(
                wordName: currentTeam.votingWords[index],
                onPressed: () => context.teamsGameStartCubit.getNextTeamVote(
                  currentTeam.votingWords[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
