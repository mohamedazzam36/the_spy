import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/game_setup_background_container.dart';

class PlayerRevealcard extends StatelessWidget {
  const PlayerRevealcard({
    super.key,
    required this.playerName,
    required this.prevPlayerName,
    required this.onPressed,
  });

  final String playerName;
  final String? prevPlayerName;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: GameSetupBackgroundContainer(
        child: Column(
          children: [
            Align(
              heightFactor: 0.7,
              child: LottieBuilder.asset(
                Assets.imagesGiveMobileToJson,
              ),
            ),
            FittedBox(
              child: Row(
                spacing: 4,
                children: [
                  CustomText(
                    prevPlayerName ?? '',
                    style: Styles.styleSemiBold24(context).copyWith(color: Colors.red),
                  ),
                  CustomText(
                    'giveMobileTo',
                    style: Styles.styleSemiBold24(context),
                  ),
                  CustomText(
                    playerName,
                    style: Styles.styleSemiBold24(context).copyWith(color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'wordRevealText'.tr(),
              style: Styles.styleMedium16(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextButton(
              text: 'show'.tr(),
              onPressed: onPressed,
              width: context.width * 0.4,
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
