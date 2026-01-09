import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/custom_settings_container.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/languages_animation_section.dart';

class ChangeLanguageSection extends StatelessWidget {
  const ChangeLanguageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSettingsContainer(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.imagesChangeLanguageIcon,
            width: 46,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  'languageSettings',
                  style: Styles.styleBold14(
                    context,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                CustomText(
                  'languageSettingsDiscription',
                  style: Styles.styleBold14(
                    context,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(top: 8, start: 16),
            child: LanguagesAnimationSection(),
          ),
        ],
      ),
    );
  }
}
