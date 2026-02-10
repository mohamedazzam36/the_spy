import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/about_app_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/change_language_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/change_volume_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/change_timer_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/three_stars_widget.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      child: MainAppStructure(
        appBarTitle: 'settings',
        titleColor: AppColors.coffeeColor,
        floatingAppBar: false,
        backButton: false,
        hasBottomDivider: false,
        hasAppBar: true,
        children: [
          Align(
            heightFactor: 0.7,
            child: Lottie.asset(Assets.imagesSettingsGif, height: 240, fit: BoxFit.cover),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomText(
            'settingsHeaderTitle',
            style: Styles.styleBold14(context).copyWith(
              color: Colors.amber,
              shadows: [
                Shadow(
                  blurRadius: 20.0,
                  color: Colors.yellow.withAlpha(150),
                  offset: const Offset(0, 0),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const ChangeVolumeSection(),
          const SizedBox(
            height: 16,
          ),
          const ChangeTimerSection(),
          const SizedBox(
            height: 16,
          ),
          const ChangeLanguageSection(),
          const SizedBox(
            height: 32,
          ),
          const ThreeStarsWidget(),
          const SizedBox(
            height: 24,
          ),
          const AboutAppSection(),
        ],
      ),
    );
  }
}
