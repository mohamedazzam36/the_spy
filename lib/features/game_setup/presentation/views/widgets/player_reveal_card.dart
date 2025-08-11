import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class PlayerRevealcard extends StatelessWidget {
  const PlayerRevealcard({
    super.key,
    required this.playerName,
  });

  final String playerName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                playerName,
                style: Styles.styleSemiBold60(
                  context,
                ).copyWith(color: kBlackColor),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            customWordRevealText(context, 'giveMobileTo'.tr()),
            customWordRevealText(context, playerName),
            const SizedBox(
              height: 32,
            ),
            Text(
              'wordRevealText'.tr(),
              style: Styles.styleSemiBold24(
                context,
              ).copyWith(color: kBlackColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  FittedBox customWordRevealText(BuildContext context, String playerName) {
    return FittedBox(
      child: Text(
        playerName,
        style: Styles.styleSemiBold35(
          context,
        ).copyWith(color: kBlackColor),
      ),
    );
  }
}
