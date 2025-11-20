import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/game_setup_body.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';

class GameSetupview extends StatelessWidget {
  const GameSetupview({super.key, required this.homeCubit});

  final HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: homeCubit,
      child: BlocProvider(
        create: (context) => GameSetupCubit(),
        child: const Scaffold(
          body: GameSetupBody(),
        ),
      ),
    );
  }
}
