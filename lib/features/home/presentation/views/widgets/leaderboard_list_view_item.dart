import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
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
      decoration: BoxDecoration(color: kLightPurpleColor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomResponsiveText(
            text: playerName,
            style: Styles.styleSemiBold35(context),
          ),
          CustomResponsiveText(
            text: playerScore.toString(),
            style: Styles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
