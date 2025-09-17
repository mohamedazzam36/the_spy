import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class VoteGridViewItem extends StatelessWidget {
  const VoteGridViewItem({
    super.key,
    required this.playerName,
    this.isSelected = false,
    required this.onTap,
  });
  final PlayerModel playerName;
  final bool? isSelected;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected! ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(16),
          ),
          child: CustomText(
            playerName.name,
            style: Styles.styleSemiBold60(context),
          ),
        ),
      ),
    );
  }
}
