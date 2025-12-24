import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_list_view.dart';

class LeaderboardListViewSection extends StatelessWidget {
  const LeaderboardListViewSection({super.key});

  final List<String> headerList = const ['rank', 'theSpy', 'alias', 'logo', 'points'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: headerList
                .map(
                  (e) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xfffff6ce),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: CustomText(
                      e,
                      style: Styles.styleBold14(context).copyWith(color: AppColors.blackColor),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const Expanded(child: LeaderboardListView()),
      ],
    );
  }
}
