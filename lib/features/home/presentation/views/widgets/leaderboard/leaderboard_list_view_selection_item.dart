import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/extensions/nick_names_extensions.dart';
import 'package:the_spy/core/extensions/players_extension.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/custom_check_box.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class LeaderboardListViewSelectionItem extends StatelessWidget {
  const LeaderboardListViewSelectionItem({
    super.key,
    required this.player,
    required this.index,
    required this.isSelected,
  });

  final PlayerModel player;
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 14, end: 16),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.blackColor.withAlpha(70) : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 50,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: CustomCheckBox(
                isSelected: isSelected,
                onChanged: (value) {
                  log("Selected value: $value");
                  if (value!) {
                    context.leaderboardCubit.selectPlayer(player);
                  } else {
                    context.leaderboardCubit.deSelectPlayer(player);
                  }
                },
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: CustomText(
              player.name,
              style: Styles.styleBold14(context).copyWith(color: AppColors.blackColor),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: SizedBox(
              width: 40,
              child: CustomText(
                player.rank.nickName,
                fit: BoxFit.fitWidth,
                style: Styles.styleBold14(
                  context,
                ).copyWith(color: AppColors.blackColor, fontSize: 12),
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: Center(
              child: Image.asset(
                player.rank.logoPath,
                width: 25,
                alignment: AlignmentDirectional.centerStart,
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: CustomText(
              player.score.toString(),
              style: Styles.styleBold14(context).copyWith(color: AppColors.blackColor),
            ),
          ),
        ],
      ),
    );
  }
}
