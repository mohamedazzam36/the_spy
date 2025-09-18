import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class WordRevealcard extends StatelessWidget {
  const WordRevealcard({
    super.key,
    required this.wordName,
  });

  final String wordName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: CustomText(
          wordName,
          style: Styles.styleSemiBold60(
            context,
          ).copyWith(color: AppColors.blackColor),
        ),
      ),
    );
  }
}
