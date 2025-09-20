import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class CustomPlayerListViewItem extends StatelessWidget {
  const CustomPlayerListViewItem({
    super.key,
    required this.player,
    required this.iconPath,
  });

  final PlayerModel player;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.coffeeColor,
      margin: const EdgeInsets.all(0),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            SvgPicture.asset(iconPath),
            Expanded(
              child: CustomText(
                player.name,
                style: Styles.styleSemiBold24(
                  context,
                ).copyWith(color: AppColors.blackColor),
              ),
            ),

            IconButton(
              onPressed: () async {
                await player.delete();
                context.playersCubit.fetchPlayersData();
              },
              icon: SvgPicture.asset(
                Assets.imagesDeleteIcon,
                width: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
