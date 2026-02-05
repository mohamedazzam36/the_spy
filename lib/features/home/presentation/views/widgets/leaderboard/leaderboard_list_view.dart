import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/app_services/leaderboard_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/leaderboard_cubit/leaderboard_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_list_view_item.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard/leaderboard_list_view_selection_item.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class LeaderboardListView extends StatelessWidget {
  const LeaderboardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BlocBuilder<LeaderboardCubit, LeaderboardState>(
          builder: (context, state) {
            List<PlayerModel> playersList = LeaderboardService.fetchSortedLeaderboard();
            bool isleaderboardNotEmpty = playersList.isNotEmpty;
            bool isInSelectionMode = context.leaderboardCubit.isSelectionMode;

            return isleaderboardNotEmpty
                ? ListView.separated(
                    padding: const EdgeInsets.all(0),
                    separatorBuilder: (context, index) => const Divider(
                      height: 24,
                      color: AppColors.blackColor,
                      indent: 5,
                      endIndent: 5,
                    ),
                    itemCount: playersList.length,
                    itemBuilder: (context, index) {
                      return isInSelectionMode
                          ? LeaderboardListViewSelectionItem(
                              player: playersList[index],
                              index: index + 1,
                              isSelected: context.leaderboardCubit.selectedPlayers.contains(
                                playersList[index],
                              ),
                            )
                          : LeaderboardListViewItem(
                              player: playersList[index],
                              index: index + 1,
                            );
                    },
                  )
                : const SizedBox();
          },
        );
      },
    );
  }
}
