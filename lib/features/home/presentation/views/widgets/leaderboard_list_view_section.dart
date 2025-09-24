import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard_list_view.dart';

class LeaderboardListViewSection extends StatelessWidget {
  const LeaderboardListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallContainer(text: 'rank'.tr()),
              SmallContainer(text: 'theSpy'.tr()),
              SmallContainer(text: 'alias'.tr()),
              SmallContainer(text: 'logo'.tr()),
              SmallContainer(text: 'points'.tr()),
            ],
          ),
        ),
        const Expanded(child: LeaderboardListView()),
      ],
    );
  }
}

class SmallContainer extends StatelessWidget {
  const SmallContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xfffff6ce),
        borderRadius: BorderRadius.circular(32),
      ),
      child: CustomText(
        text,
        style: Styles.styleBold14(context).copyWith(color: AppColors.blackColor),
      ),
    );
  }
}
