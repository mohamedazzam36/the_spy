import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/widgets/custom_curved_navigation_bar.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard_view_body.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings_view_body.dart';

class MainAppViews extends StatelessWidget {
  const MainAppViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: const CustomCurvedNavigationBar(),
            body: Container(
              decoration: BoxDecoration(gradient: context.homeCubit.currentGradient),
              child: IndexedStack(
                index: context.homeCubit.currentNavBarIndex,
                children: const [
                  LeaderboardViewBody(),
                  HomeViewBody(),
                  SettingsViewBody(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
