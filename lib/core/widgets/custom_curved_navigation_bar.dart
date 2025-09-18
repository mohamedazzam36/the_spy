import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';

class CustomCurvedNavigationBar extends StatelessWidget {
  const CustomCurvedNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return CurvedNavigationBar(
          onTap: (index) => context.homeCubit.homeNavigation(index),
          index: 1,
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          color: context.homeCubit.currentGradient.colors[0],
          items: const [
            Icon(
              Icons.leaderboard,
              color: AppColors.whiteColor,
              size: 32,
            ),
            Icon(
              Icons.home,
              color: AppColors.whiteColor,
              size: 32,
            ),
            Icon(
              Icons.settings,
              color: AppColors.whiteColor,
              size: 32,
            ),
          ],
        );
      },
    );
  }
}
