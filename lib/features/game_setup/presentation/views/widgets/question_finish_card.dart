import 'package:easy_localization/easy_localization.dart';
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
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: FittedBox(
          child: Text(
            'nowYouCanAskOrVote'.tr(),
            style: Styles.styleSemiBold60(
              context,
            ).copyWith(color: AppColors.blackColor),
          ),
        ),
      ),
    );
  }
}
