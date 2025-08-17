import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/player_reveal_card.dart';

class PlayerRevealWidget extends StatelessWidget {
  const PlayerRevealWidget({
    super.key,
    required this.player,
  });

  final PlayerModel player;

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
                  PlayerRevealcard(
                    playerName: player.name,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomSmallTextButton(
                    onPressed: () => context.gameStartCubit.switchBetweenPlayersAndWord(),
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
