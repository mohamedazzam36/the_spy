import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/app_services/leaderboard_service.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard_list_view_item.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class LeaderboardListView extends StatelessWidget {
  const LeaderboardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        List<PlayerModel> playersList = LeaderboardService.fetchLeaderboard();
        return leaderboardBox.values.isNotEmpty
            ? ListView.separated(
                padding: const EdgeInsets.all(0),
                separatorBuilder: (context, index) => const Divider(
                  height: 24,
                  color: AppColors.blackColor,
                  indent: 5,
                  endIndent: 5,
                ),
                itemCount: leaderboardBox.values.length,
                itemBuilder: (context, index) {
                  return LeaderboardListViewItem(
                    player: playersList[index],
                    index: index + 1,
                  );
                },
              )
            : const SizedBox();
      },
    );
  }
}
