import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/app_colors.dart';

class MainBackgroundContainer extends StatelessWidget {
  const MainBackgroundContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.only(bottom: 24),
    this.gradient,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        gradient: gradient ?? AppColors.primaryGradient,
      ),
      child: child,
    );
  }
}
