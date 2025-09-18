import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/players_swaping_animation_controller.dart';

class PlayersSwapingAnimation extends StatefulWidget {
  const PlayersSwapingAnimation({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  State<PlayersSwapingAnimation> createState() => _PlayersSwapingAnimationState();
}

class _PlayersSwapingAnimationState extends State<PlayersSwapingAnimation> {
  late PlayersSwapingAnimationController controller;

  @override
  void initState() {
    controller = PlayersSwapingAnimationController(
      onFinish: () => setState(() {}),
      onPlayersShown: () => setState(() {}),
      onSpysShown: () => setState(() {}),
    );
    controller.startAnimation();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            color: controller.isSpyShowed ? AppColors.lightPrimaryColor : AppColors.blackColor,
            shape: BoxShape.circle,
          ),
          child: AspectRatio(
            aspectRatio: 1,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  controller.isSpyShowed
                      ? playersModel.spysList[controller.currentSpyIndex].name
                      : playersModel.playersList[controller.currentPlayerIndex].name,
                  style: Styles.styleSemiBold60(
                    context,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        controller.isFinished
            ? CustomSmallTextButton(
                text: 'next'.tr(),
                onPressed: widget.onPressed,
              )
            : const SizedBox(),
      ],
    );
  }
}
