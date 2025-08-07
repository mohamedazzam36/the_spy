import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

PlayersCubit accessPlayerCubit(BuildContext context) {
  return BlocProvider.of<PlayersCubit>(context);
}
