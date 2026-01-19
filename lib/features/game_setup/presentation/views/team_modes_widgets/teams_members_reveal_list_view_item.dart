import 'package:flutter/material.dart';
import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class TeamsMembersRevealListViewItem extends StatelessWidget {
  const TeamsMembersRevealListViewItem({super.key, required this.teamInfo});

  final TeamModel teamInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.coffeeColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4,
            children: [
              CustomText(
                'team',
                style: Styles.styleBold40(context).copyWith(color: AppColors.blackColor),
              ),
              CustomText(
                '${teamInfo.id + 1}',
                style: Styles.styleBold40(context).copyWith(color: AppColors.blackColor),
              ),
            ],
          ),
          Column(
            spacing: 4,
            children: teamInfo.playersDetails.map(
              (e) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      e.player.name,
                      style: Styles.styleBold25(context).copyWith(color: AppColors.blackColor),
                    ),
                    CustomText(
                      '${e.score}',
                      style: Styles.styleBold25(
                        context,
                      ).copyWith(color: e.score == 0 ? Colors.red : Colors.green),
                    ),
                  ],
                );
              },
            ).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                'totalPoints',
                style: Styles.styleBold25(
                  context,
                ).copyWith(color: Colors.black),
              ),
              CustomText(
                ':',
                style: Styles.styleBold25(
                  context,
                ).copyWith(color: Colors.black),
              ),
              const SizedBox(
                width: 4,
              ),
              CustomText(
                '${teamInfo.score}',
                style: Styles.styleBold25(
                  context,
                ).copyWith(color: teamInfo.score == 0 ? Colors.red : Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
