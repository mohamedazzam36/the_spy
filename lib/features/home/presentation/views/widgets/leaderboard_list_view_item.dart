import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';

class LeaderboardListViewItem extends StatelessWidget {
  const LeaderboardListViewItem({super.key, required this.playerName, required this.playerScore});

  final String playerName;
  final int playerScore;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.homeCubit.currentGradient.colors[1],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            playerName,
            style: Styles.styleSemiBold35(context),
          ),
          CustomText(
            playerScore.toString(),
            style: Styles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
