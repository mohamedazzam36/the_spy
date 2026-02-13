import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/game_setup_background_container.dart';

class WordRevealcard extends StatelessWidget {
  const WordRevealcard({
    super.key,
    required this.wordName,
    required this.onNextPressed,
  });

  final String wordName;
  final void Function() onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: GameSetupBackgroundContainer(
        child: Column(
          children: [
            CustomText(
              'theWordIs',
              style: Styles.styleBold32(context).copyWith(color: AppColors.blackColor),
            ),
            const SizedBox(height: 28),
            CustomText(
              wordName,
              style: Styles.styleBold40(context).copyWith(color: AppColors.purpleColor),
            ),
            const SizedBox(height: 24),
            CustomTextButton(
              text: 'next'.tr(),
              onPressed: onNextPressed,
              width: context.width * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
