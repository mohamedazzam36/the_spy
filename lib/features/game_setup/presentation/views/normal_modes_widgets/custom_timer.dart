import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/normal_modes/normal_game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/custom_timer_painter.dart';

class CustomTimer extends StatefulWidget {
  const CustomTimer({super.key, required this.startingTime, required this.onFinish});

  final int startingTime;
  final void Function() onFinish;

  @override
  State<CustomTimer> createState() => _CustomTimerState();
}

class _CustomTimerState extends State<CustomTimer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.startingTime),
    );
    startTimer();
    super.initState();
  }

  void startTimer() {
    _controller.reverse(from: 1).whenComplete(
      () {
        widget.onFinish();
        startTimer();
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NormalGameSetupCubit, NormalGameSetupState>(
      listener: (context, state) {
        if (state is ResetTime || state is TimeIsUp) {
          startTimer();
        }
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          double remainingTime = _controller.value * widget.startingTime;
          return Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CustomPaint(
                    painter: TimerPainter(_controller.value),
                  ),
                ),
                Text(
                  remainingTime.ceil().toString(),
                  style: Styles.styleBold25(context).copyWith(color: AppColors.blackColor),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
