import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_spy/constants.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/utils/service_locator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late bool isFirstStart;

  @override
  void initState() {
    super.initState();
    isFirstStart = getIt.get<Box<dynamic>>().get(
      kIsFirstStart,
      defaultValue: true,
    );
    buildFadingAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadeAnimation,
      builder: (context, child) {
        return FadeTransition(
          opacity: animationController,
          child: child,
        );
      },
      child: Image.asset(Assets.imagesCzTeam),
    );
  }

  buildFadingAnimation() async {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);
    await animationController.forward();
    await Future.delayed(const Duration(milliseconds: 500));
    if (mounted) {
      await animationController.reverse();
      context.pushReplacement(AppRouter.kAdaptiveLayoutView);
    }
  }
}
