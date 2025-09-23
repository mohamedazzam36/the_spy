import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/game_setup_body.dart';

class GameSetupview extends StatelessWidget {
  const GameSetupview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameSetupCubit(),
      child: const Scaffold(
        body: GameSetupBody(),
      ),
    );
  }
}
