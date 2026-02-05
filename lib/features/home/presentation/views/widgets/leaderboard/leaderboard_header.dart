import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class LeaderboardHeader extends StatelessWidget {
  const LeaderboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        CustomText(
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
        FittedBox(
          child: Row(
            spacing: 4,
            children: [
              CustomText(
                'leaderboardDiscription',
                style: Styles.styleBold13(context),
              ),
              CustomText(
                'theSpy',
                style:
                    Styles.styleBold13(
                      context,
                    ).copyWith(
                      color: Colors.orangeAccent,
                      shadows: [
                        Shadow(
                          blurRadius: 20.0,
                          color: Colors.yellow.withAlpha(200),
                          offset: const Offset(0, 0),
                        ),
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
