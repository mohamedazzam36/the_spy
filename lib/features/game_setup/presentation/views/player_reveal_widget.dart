import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/game_setup/presentation/views/player_reveal_card.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class PlayerRevealWidget extends StatelessWidget {
  const PlayerRevealWidget({
    super.key,
    required this.currentplayer,
    required this.prevplayer,
    required this.onNextPressed,
  });

  final PlayerModel currentplayer;
  final PlayerModel? prevplayer;
  final void Function() onNextPressed;

  @override
  Widget build(BuildContext context) {
    return MainAppStructure(
      appBarTitle: AppServices.currentCategory.name,
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
                  onPressed: onNextPressed,
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
