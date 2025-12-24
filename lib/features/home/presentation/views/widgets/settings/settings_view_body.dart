import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/change_language_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/timer_change_section.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MainAppStructure(
      appBarTitle: 'settings',
      hasAppBar: true,
      children: [
        Align(
          heightFactor: 0.7,
          child: Lottie.asset(Assets.imagesSettingsGif, height: 240, fit: BoxFit.cover),
        ),
        const TimerChangeSection(),
        const SizedBox(
          height: 24,
        ),
        const ChangeLanguageSection(),
      ],
    );
  }
}
