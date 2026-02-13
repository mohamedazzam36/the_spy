import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';

class GameSetupBackgroundContainer extends StatelessWidget {
  const GameSetupBackgroundContainer({super.key, required this.child, this.borderRadius});

  final Widget child;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        color: AppColors.coffeeColor,
      ),
      child: child,
    );
  }
}
