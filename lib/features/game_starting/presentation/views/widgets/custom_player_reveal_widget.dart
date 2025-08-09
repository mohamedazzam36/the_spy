import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_player_reveal_card.dart';

class CustomPlayerRevealWidget extends StatelessWidget {
  const CustomPlayerRevealWidget({
    super.key,
    this.onPressed,
    required this.player,
  });

  final PlayerModel player;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .1,
                vertical: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomPlayerRevealcard(
                    playerName: player.name,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomSmallTextButton(
                    onPressed: onPressed,
                    text: 'show'.tr(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
