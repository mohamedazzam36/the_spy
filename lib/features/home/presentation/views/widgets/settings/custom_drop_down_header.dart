import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class CustomDropDownHeader extends StatelessWidget {
  const CustomDropDownHeader({
    super.key,
    required this.onPressed,
    required this.isIconRotated,
    required this.time,
    required this.seconds,
  });

  final void Function() onPressed;
  final bool isIconRotated;
  final String time, seconds;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: SizedBox(
        width: context.width * 0.55,
        height: 28,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(4)),
            backgroundColor: AppColors.coffeeColor,
            overlayColor: Colors.black.withAlpha(100),
            padding: const EdgeInsetsDirectional.only(start: 16, end: 8),
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              CustomText(
                time,
                style: Styles.styleBold14(context).copyWith(color: Colors.black),
              ),
              const SizedBox(
                width: 4,
              ),
              CustomText(
                seconds,
                style: Styles.styleBold14(context).copyWith(color: Colors.black),
              ),
              const Spacer(),
              AnimatedRotation(
                turns: isIconRotated ? 1.25 : 0.75,
                duration: const Duration(milliseconds: 200),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
