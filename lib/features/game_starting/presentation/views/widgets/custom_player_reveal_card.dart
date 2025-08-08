import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/generated/l10n.dart';

class CustomPlayerRevealcard extends StatelessWidget {
  const CustomPlayerRevealcard({
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
            CustomWordRevealText(playerName: S.of(context).giveMobileTo),
            CustomWordRevealText(playerName: playerName),
            const SizedBox(
              height: 32,
            ),
            Text(
              S.of(context).wordRevealText,
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
}

class CustomWordRevealText extends StatelessWidget {
  const CustomWordRevealText({
    super.key,
    required this.playerName,
  });

  final String playerName;

  @override
  Widget build(BuildContext context) {
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
