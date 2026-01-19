import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/game_setup/presentation/views/results_right_word_section.dart';

class TeamResultGridViewItem extends StatelessWidget {
  const TeamResultGridViewItem({
    super.key,

    required this.isVotingTrue,
    required this.team,
    required this.votedWord,
  });

  final TeamModel team;
  final bool isVotingTrue;
  final String votedWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.coffeeColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          CustomText(
            '${'team'.tr()}${team.id + 1}',
            style: Styles.styleBold50(context).copyWith(color: AppColors.blackColor),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomText(
            'select',
            style: Styles.styleSemiBold35(context).copyWith(color: AppColors.blackColor),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomText(
            votedWord,
            style: Styles.styleSemiBold35(
              context,
            ).copyWith(color: isVotingTrue ? Colors.green : Colors.red),
          ),
          const SizedBox(
            height: 8,
          ),
          ResultsRightWordSection(
            rightWord: team.opponentTeamInfo.shownWord,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
