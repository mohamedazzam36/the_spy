import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class QuestionFinishCard extends StatelessWidget {
  const QuestionFinishCard({
    super.key,
  });

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
            'دلوقتي تقدروا تصوتوا او تسالوا تاني',
            style: Styles.styleSemiBold60(
              context,
            ).copyWith(color: kBlackColor),
          ),
        ),
      ),
    );
  }
}
