import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class CustomWordRevealcard extends StatelessWidget {
  const CustomWordRevealcard({
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
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: FittedBox(
          child: Text(
            wordName,
            style: Styles.styleSemiBold60(
              context,
            ).copyWith(color: kBlackColor),
          ),
        ),
      ),
    );
  }
}
