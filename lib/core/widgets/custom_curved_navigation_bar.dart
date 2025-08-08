import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';

class CustomCurvedNavigationBar extends StatelessWidget {
  const CustomCurvedNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: 1,
      backgroundColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 300),
      color: kLightPurpleColor,
      items: const [
        Icon(
          Icons.leaderboard,
          color: kWhiteColor,
          size: 32,
        ),
        Icon(
          Icons.home,
          color: kWhiteColor,
          size: 32,
        ),
        Icon(
          Icons.settings,
          color: kWhiteColor,
          size: 32,
        ),
      ],
    );
  }
}
