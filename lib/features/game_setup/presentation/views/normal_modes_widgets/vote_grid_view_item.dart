import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
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
    required this.iconPath,
  });
  final PlayerModel playerName;
  final bool isSelected;
  final void Function() onTap;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: context.homeCubit.currentGradient,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            margin: EdgeInsets.all(isSelected ? 0 : 2),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected ? Colors.transparent : AppColors.coffeeColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isSelected ? AppColors.blackColor : Colors.transparent,
                width: 2,
              ),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  SvgPicture.asset(
                    iconPath,
                    width: 32,
                    placeholderBuilder: (context) => const SizedBox(height: 32),
                  ),
                  CustomText(
                    playerName.name,
                    style: Styles.styleBold18(
                      context,
                    ).copyWith(color: isSelected ? AppColors.coffeeColor : AppColors.blackColor),
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
