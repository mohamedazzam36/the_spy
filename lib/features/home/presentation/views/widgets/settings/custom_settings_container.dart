import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/app_colors.dart';

class CustomSettingsContainer extends StatelessWidget {
  const CustomSettingsContainer({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(100),
        border: Border.all(color: AppColors.coffeeColor),
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
