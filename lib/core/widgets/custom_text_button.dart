import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.textColor = AppColors.blackColor,
    this.borderColor = AppColors.blackColor,
    this.width,
  });

  final String text;
  final void Function() onPressed;
  final TextStyle? textStyle;
  final Color textColor, borderColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 3.5,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            overlayColor: AppColors.blackColor,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                color: borderColor,
                width: 1,
              ),
            ),
          ),
          child: CustomText(
            text,
            style: textStyle ?? Styles.styleBold50(context).copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
