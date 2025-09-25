import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/nick_names_extensions.dart';
import 'package:the_spy/core/extensions/players_extension.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class LeaderboardListViewItem extends StatelessWidget {
  const LeaderboardListViewItem({super.key, required this.player, required this.index});

  final PlayerModel player;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 14, end: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 50,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: CustomText(
                  index.toString(),
                  style: Styles.extraLight16(
                    context,
                  ).copyWith(color: AppColors.coffeeColor, backgroundColor: AppColors.blackColor),
                ),
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
            child: CustomText(
              player.rank.nickName,
              style: Styles.styleBold14(
                context,
              ).copyWith(color: AppColors.blackColor, fontSize: 12),
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
