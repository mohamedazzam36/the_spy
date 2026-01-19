import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/enums/game_modes_enum.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/functions/show_main_dialog.dart';
import 'package:the_spy/core/widgets/in_game_pop_up_dialog.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/normal_modes/normal_game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/team_modes/teams_game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/game_setup_body.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_game_setup_body.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';

class GameSetupview extends StatelessWidget {
  const GameSetupview({super.key, required this.homeCubit});

  final HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: homeCubit,
      child: Scaffold(
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (!didPop) {
              showInGamePopUpDialog(
                context,
                InGamePopUpDialog(
                  title: 'leaveMatchPopUpDescription',
                  onYesPressed: () => context.popTimes(2),
                  onNoPressed: () => Navigator.pop(context),
                ),
              );
            }
          },
          child: switch (AppServices.currentMainMode) {
            MainGameModes.classic || MainGameModes.blind => BlocProvider(
              create: (context) => NormalGameSetupCubit(),
              child: const GameSetupBody(),
            ),
            MainGameModes.teams => BlocProvider(
              create: (context) => TeamsGameSetupCubit(),
              child: const TeamsGameSetupBody(),
            ),
          },
        ),
      ),
    );
  }
}
