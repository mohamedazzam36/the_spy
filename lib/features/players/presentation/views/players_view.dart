import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/players/presentation/views/widgets/players_view_body.dart';

class PlayersView extends StatelessWidget {
  const PlayersView({super.key, required this.homeCubit});

  final HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>.value(
      value: homeCubit,
      child: const Scaffold(
        body: PlayersViewBody(),
      ),
    );
  }
}
