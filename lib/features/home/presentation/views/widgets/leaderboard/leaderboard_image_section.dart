import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';

class LeaderboardImageSection extends StatelessWidget {
  const LeaderboardImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: AppColors.coffeeColor,
            radius: 120,
          ),
          Positioned(
            top: 10,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                Assets.imagesLeaderboardHeaderImage,
                width: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
