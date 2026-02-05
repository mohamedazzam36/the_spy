import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/widgets/orientation_aware_widget.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/leaderboard_cubit/leaderboard_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/landscape_leaderboard_view_body.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/portrait_leaderboard_view_body.dart';

class LeaderboardViewBody extends StatelessWidget {
  const LeaderboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LeaderboardCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Builder(
            builder: (context) {
              return BlocBuilder<LeaderboardCubit, LeaderboardState>(
                builder: (context, state) {
                  return PopScope(
                    canPop:
                        !(context.homeCubit.currentNavBarIndex == 0 &&
                            context.leaderboardCubit.isSelectionMode),
                    onPopInvokedWithResult: (didPop, result) {
                      if (context.homeCubit.currentNavBarIndex == 0 &&
                          context.leaderboardCubit.isSelectionMode) {
                        context.leaderboardCubit.toggleSelectionMode();
                      }
                    },
                    child: const OrientationAwareWidget(
                      portraitWidget: PortraitLeaderboardViewBody(),
                      landscapeWidget: LandscapeLeaderboardViewBody(),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
