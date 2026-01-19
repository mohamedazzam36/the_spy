import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_individual_voting_footer_item.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class TeamsIndividualVotingFooter extends StatelessWidget {
  const TeamsIndividualVotingFooter({super.key, required this.showedPlayer});
  final PlayerModel showedPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TeamsIndividualVotingFooterItem(
            buttonTitle: 'againstYou'.tr(),
            onPressed: () => context.teamsGameStartCubit.getNextPlayerVote(false),
            color: Colors.redAccent,
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: TeamsIndividualVotingFooterItem(
            buttonTitle: 'withYou'.tr(),
            onPressed: () => context.teamsGameStartCubit.getNextPlayerVote(true),
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
