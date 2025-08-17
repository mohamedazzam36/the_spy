import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';

class ChangeLanguageSection extends StatelessWidget {
  const ChangeLanguageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kLightPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          CustomResponsiveText(
            text: 'changeLanguage'.tr(),
            style: Styles.styleSemiBold60(context),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomSmallTextButton(
            text: 'العربيه',
            onPressed: () => context.setLocale(const Locale('ar')),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomSmallTextButton(
            text: 'English',
            onPressed: () => context.setLocale(const Locale('en')),
          ),
        ],
      ),
    );
  }
}
