import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/custom_timer.dart';

class VoteRevealTimerHeader extends StatelessWidget {
  const VoteRevealTimerHeader({
    super.key,
    required this.startingTime,
    required this.onFinish,
    required this.text,
  });

  final int startingTime;
  final void Function() onFinish;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        CustomTimer(
          startingTime: startingTime,
          onFinish: onFinish,
        ),
        CustomText(
          text,
          style:
              Styles.styleBold12(
                context,
              ).copyWith(
                shadows: [
                  const BoxShadow(
                    color: AppColors.blackColor,
                    blurRadius: 0.2,
                    spreadRadius: 1,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
        ),
        Container(
          width: 80,
          height: 2,
          color: AppColors.blackColor,
        ),
      ],
    );
  }
}
