import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class CustomSquareButton extends StatelessWidget {
  const CustomSquareButton({
    super.key,
    required this.onPressed,
    this.borderColor = AppColors.blackColor,
    required this.title,
    required this.iconPath,
    required this.subTitleWidget,
  });

  final void Function() onPressed;
  final Color borderColor;
  final String title, iconPath;
  final Widget subTitleWidget;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          overlayColor: AppColors.blackColor,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(color: borderColor, width: 1),
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            children: [
              SvgPicture.asset(
                iconPath,
                width: 24,
                placeholderBuilder: (context) => const SizedBox(height: 24),
              ),
              CustomText(title, style: Styles.styleBold18(context)),
              const SizedBox(height: 4),
              subTitleWidget,
            ],
          ),
        ),
      ),
    );
  }
}
