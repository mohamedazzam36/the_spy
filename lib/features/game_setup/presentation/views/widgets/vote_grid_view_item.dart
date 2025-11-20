import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
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
        color: Colors.transparent,
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected! ? Colors.blue : AppColors.coffeeColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: CustomText(
            playerName.name,
            style: Styles.styleSemiBold60(context).copyWith(color: AppColors.blackColor),
          ),
        ),
      ),
    );
  }
}
