import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/game_setup_background_container.dart';

class QuestionsRevealcard extends StatelessWidget {
  const QuestionsRevealcard({
    super.key,
    required this.askingPlayer,
    required this.askedPlayer,
    required this.onPressed,
  });

  final String askingPlayer, askedPlayer;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: GameSetupBackgroundContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  heightFactor: 0.7,
                  child: Opacity(
                    opacity: 0.2,
                    child: Lottie.asset(Assets.imagesQuestionsRoundAnimation),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        askingPlayer,
                        style: Styles.styleMedium24(context).copyWith(color: AppColors.pinkColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: FittedBox(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'ask'.tr(),
                          style: Styles.styleMedium24(context),
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        askedPlayer,
                        style: Styles.styleMedium24(context).copyWith(color: AppColors.pinkColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            CustomText(
              'askNotDirectly',
              style: Styles.stylesLight16(context),
            ),
            const SizedBox(height: 4),
            CustomText(
              'butWithCondition',
              style: Styles.styleSemiBold16(context).copyWith(color: AppColors.redColor),
            ),
            const SizedBox(height: 4),
            CustomText('questionsCondition', style: Styles.stylesLight16(context)),
            const SizedBox(height: 24),
            CustomTextButton(
              text: 'next'.tr(),
              onPressed: onPressed,
              width: context.width * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
