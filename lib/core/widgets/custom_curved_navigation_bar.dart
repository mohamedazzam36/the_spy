import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

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
      color: const Color.fromARGB(255, 128, 56, 116),
      items: const [
        Icon(
          Icons.leaderboard,
          color: Colors.white,
          size: 32,
        ),
        Icon(
          Icons.home,
          color: Colors.white,
          size: 32,
        ),
        Icon(
          Icons.settings,
          color: Colors.white,
          size: 32,
        ),
      ],
    );
  }
}
