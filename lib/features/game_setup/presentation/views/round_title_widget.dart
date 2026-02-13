import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class RoundTitleWidget extends StatelessWidget {
  const RoundTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        CustomText(title, style: Styles.styleBold32(context)),
        Container(
          width: 64,
          height: 2,
          color: AppColors.whiteColor,
        ),
      ],
    );
  }
}
