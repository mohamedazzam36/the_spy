import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class LeaderboardHeader extends StatelessWidget {
  const LeaderboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CustomText(
                'leaderboard',
                style: Styles.styleBold40(context).copyWith(
                  color: Colors.orangeAccent,
                  shadows: [
                    Shadow(
                      blurRadius: 20.0,
                      color: Colors.yellow.withAlpha(150),
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image.asset(
                  //   Assets.imagesLeaderboardHeaderGif,
                  // ),
                  // Image.asset(
                  //   Assets.imagesLeaderboardHeaderGif,
                  // ),
                ],
              ),
            ),
          ],
        ),
        FittedBox(
          child: Row(
            spacing: 4,
            children: [
              CustomText('leaderboardDiscription', style: Styles.styleBold14(context)),
              CustomText(
                'theSpy',
                style:
                    Styles.styleBold14(
                      context,
                    ).copyWith(
                      shadows: [
                        const Shadow(color: Color.fromARGB(255, 252, 17, 0), blurRadius: 20),
                      ],
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
