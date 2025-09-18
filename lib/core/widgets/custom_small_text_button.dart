import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class CustomSmallTextButton extends StatelessWidget {
  const CustomSmallTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: AppColors.whiteColor),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.styleSemiBold35(
          context,
        ).copyWith(color: AppColors.blackColor),
      ),
    );
  }
}
