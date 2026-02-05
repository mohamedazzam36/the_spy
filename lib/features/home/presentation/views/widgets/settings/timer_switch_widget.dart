import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';

class TimerSwitchWidget extends StatelessWidget {
  const TimerSwitchWidget({super.key, required this.onChanged});

  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Switch(
          padding: const EdgeInsets.all(0),
          activeThumbColor: Colors.white,
          activeTrackColor: context.homeCubit.currentSoundColors.thumbColor,
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: const Color(0xff4f4c4c),
          value: TimeService.hasTimer,
          onChanged: onChanged,
        );
      },
    );
  }
}
