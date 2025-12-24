import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';

class ChangeLanguageSection extends StatelessWidget {
  const ChangeLanguageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          'changeLanguage',
          style: Styles.styleSemiBold24(context).copyWith(color: AppColors.coffeeColor),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTextButton(
          text: 'العربيه',
          onPressed: () => context.setLocale(const Locale('ar')),
          width: context.width / 2,
          borderColor: AppColors.coffeeColor,
          textColor: AppColors.coffeeColor,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextButton(
          text: 'English',
          onPressed: () => context.setLocale(const Locale('en')),
          width: context.width / 2,
          borderColor: AppColors.coffeeColor,
          textColor: AppColors.coffeeColor,
        ),
      ],
    );
  }
}
