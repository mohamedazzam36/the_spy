import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/player_reveal_card.dart';

class PlayerRevealWidget extends StatelessWidget {
  const PlayerRevealWidget({
    super.key,
    required this.currentplayer,
    required this.prevplayer,
  });

  final PlayerModel currentplayer;
  final PlayerModel? prevplayer;

  @override
  Widget build(BuildContext context) {
    return MainBackgroundContainer(
      child: MainAppStructure(
        appBarTitle: 'wordsRound'.tr(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  PlayerRevealcard(
                    playerName: currentplayer.name,
                    prevPlayerName: prevplayer?.name,
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
