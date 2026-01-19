import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class VoteHeader extends StatelessWidget {
  const VoteHeader({super.key, required this.votingPlayer});
  final PlayerModel votingPlayer;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        votingPlayer.name,
        textAlign: TextAlign.center,
        style: Styles.styleBold50(context).copyWith(color: AppColors.coffeeColor),
      ),
    );
  }
}
