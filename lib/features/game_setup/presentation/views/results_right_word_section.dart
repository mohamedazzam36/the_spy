import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class ResultsRightWordSection extends StatelessWidget {
  const ResultsRightWordSection({
    super.key,
    required this.rightWord,
    required this.color,
  });

  final String rightWord;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          'rightWord',
          style: Styles.styleSemiBold35(context).copyWith(color: AppColors.blackColor),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomText(
          rightWord,
          style: Styles.styleSemiBold35(context).copyWith(color: color),
        ),
      ],
    );
  }
}
