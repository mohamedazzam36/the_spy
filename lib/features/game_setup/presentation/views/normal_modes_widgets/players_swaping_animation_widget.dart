import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/players_swaping_animation.dart';

class PlayersSwapingAnimationWidget extends StatelessWidget {
  const PlayersSwapingAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MainBackgroundContainer(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'theSpyIs'.tr(),
                  style: Styles.styleSemiBold60(context),
                ),
                const SizedBox(
                  height: 60,
                ),
                PlayersSwapingAnimation(
                  onPressed: () => context.normalGameStartCubit.setSpyVotingInfo(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
