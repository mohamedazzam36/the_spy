import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/game_setup_cubit.dart';

class CustomTimer extends StatefulWidget {
  const CustomTimer({super.key, required this.startingTime, required this.onFinish});

  final int startingTime;
  final void Function() onFinish;

  @override
  State<CustomTimer> createState() => _CustomTimerState();
}

class _CustomTimerState extends State<CustomTimer> {
  late int currentTime;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    currentTime = widget.startingTime;
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (t) {
        if (currentTime > 1) {
          setState(() {
            currentTime--;
          });
        } else {
          t.cancel();
          widget.onFinish();
          setState(() {
            startTimer();
          });
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double progress = currentTime / widget.startingTime;

    return BlocListener<GameSetupCubit, GameSetupState>(
      listener: (context, state) {
        if (state is ResetTime || state is TimeIsUp) {
          setState(() {
            currentTime = widget.startingTime;
          });
        }
      },
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: CircularProgressIndicator(
                value: progress,
                backgroundColor: AppColors.coffeeColor,
                strokeWidth: 10,
                valueColor: const AlwaysStoppedAnimation(Colors.red),
              ),
            ),
            Text(
              currentTime.toString(),
              style: Styles.styleBold25(context).copyWith(color: AppColors.coffeeColor),
            ),
          ],
        ),
      ),
    );
  }
}
