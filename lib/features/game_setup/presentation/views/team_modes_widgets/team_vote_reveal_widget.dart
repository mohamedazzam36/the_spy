import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_individual_voting_footer.dart';
import 'package:the_spy/features/game_setup/presentation/views/vote_header.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_custom_timer.dart';

import 'package:the_spy/features/players/data/models/player_model.dart';

class TeamVoteRevealWidget extends StatelessWidget {
  const TeamVoteRevealWidget({super.key, required this.shownPlayer, required this.votingPlayer});

  final PlayerModel votingPlayer, shownPlayer;

  @override
  Widget build(BuildContext context) {
    return MainAppStructure(
      appBarTitle: AppServices.currentCategory.name,
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        SliverToBoxAdapter(
          child: TimeService.hasTimer
              ? TeamsCustomTimer(
                  startingTime: TimeService.playersVotingTime,
                  onFinish: () => context.teamsGameStartCubit.endTime(),
                )
              : const SizedBox(),
        ),
        SliverToBoxAdapter(child: VoteHeader(votingPlayer: votingPlayer)),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              spacing: 4,
              children: [
                Text(
                  'is'.tr(),
                  style: Styles.styleBold50(
                    context,
                  ).copyWith(color: AppColors.coffeeColor, fontSize: 36),
                ),
                Text(
                  shownPlayer.name,
                  textAlign: TextAlign.center,
                  style: Styles.styleBold50(
                    context,
                  ).copyWith(color: AppColors.coffeeColor, fontSize: 36),
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 12,
          ),
        ),
        SliverToBoxAdapter(
          child: TeamsIndividualVotingFooter(
            showedPlayer: shownPlayer,
          ),
        ),
      ],
    );
  }
}
