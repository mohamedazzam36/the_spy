import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/widgets/custom_curved_navigation_bar.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home/home_view_body.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_view_body.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/settings_view_body.dart';

class MainAppViews extends StatelessWidget {
  const MainAppViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return MainBackgroundContainer(
            padding: const EdgeInsets.all(0),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              bottomNavigationBar: const CustomCurvedNavigationBar(),
              body: IndexedStack(
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
