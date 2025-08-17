import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class ResultLeaderboardItem extends StatelessWidget {
  const ResultLeaderboardItem({super.key, required this.player});
  final PlayerModel player;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: kLightPrimaryColor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomResponsiveText(
            text: player.name,
            style: Styles.styleSemiBold35(context),
          ),
          CustomResponsiveText(
            text: player.score.toString(),
            style: Styles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
