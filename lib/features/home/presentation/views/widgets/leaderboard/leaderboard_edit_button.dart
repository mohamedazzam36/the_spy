import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/functions/show_main_dialog.dart';
import 'package:the_spy/core/widgets/in_game_pop_up_dialog.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/leaderboard_cubit/leaderboard_cubit.dart';

class LeaderboardEditButton extends StatelessWidget {
  const LeaderboardEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.leaderboardCubit.isSelectionMode &&
              context.leaderboardCubit.selectedPlayers.isNotEmpty
          ? showInGamePopUpDialog(
              context,
              InGamePopUpDialog(
                title: 'areYouSureToDeleteLeaderboardPlayer',
                onYesPressed: () async {
                  await context.leaderboardCubit.deletePlayers();
                  if (context.mounted) {
                    Navigator.pop(context);
                    context.leaderboardCubit.toggleSelectionMode();
                  }
                },
                onNoPressed: () => Navigator.pop(context),
              ),
            )
          : context.leaderboardCubit.toggleSelectionMode(),
      child: BlocBuilder<LeaderboardCubit, LeaderboardState>(
        builder: (context, state) {
          return CircleAvatar(
            radius: 14,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            child: context.leaderboardCubit.isSelectionMode
                ? const Icon(Icons.delete, size: 18)
                : const Icon(Icons.edit_square, size: 18),
          );
        },
      ),
    );
  }
}
