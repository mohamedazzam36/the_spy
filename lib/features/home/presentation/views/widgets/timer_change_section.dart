import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/views/widgets/timer_change_drop_box.dart';

class TimerChangeSection extends StatelessWidget {
  const TimerChangeSection({super.key});

  final List<int> playersTimes = const [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60];
  final List<int> spysTimes = const [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 150,
        ),
        CustomText(
          'timerChange',
          style: Styles.styleSemiBold24(context).copyWith(color: AppColors.coffeeColor),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomText(
          'spysVoting',
          style: Styles.styleMedium16(context).copyWith(color: AppColors.coffeeColor),
        ),
        const SizedBox(
          height: 8,
        ),
        TimerChangeDropBox(
          showedValue: TimeService.playersVotingTime,
          timesList: playersTimes,
          onChanged: (newTime) => TimeService.setPlayersVotingTime(newTime),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomText(
          'playersVoting',
          style: Styles.styleMedium16(context).copyWith(color: AppColors.coffeeColor),
        ),
        const SizedBox(
          height: 8,
        ),
        TimerChangeDropBox(
          showedValue: TimeService.spysVotingTime,
          timesList: playersTimes,
          onChanged: (newTime) => TimeService.setSpysVotingTime(newTime),
        ),
      ],
    );
  }
}
