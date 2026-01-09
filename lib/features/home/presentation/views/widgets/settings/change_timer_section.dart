import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/settings_cubit/settings_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/timer_list_view_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/timer_switch_widget.dart';

class ChangeTimerSection extends StatefulWidget {
  const ChangeTimerSection({super.key});

  @override
  State<ChangeTimerSection> createState() => _ChangeTimerSectionState();
}

class _ChangeTimerSectionState extends State<ChangeTimerSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(100),
        border: Border.all(color: AppColors.coffeeColor),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Assets.imagesTimeChangeIcon,
                width: 46,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'timeSettings',
                      style: Styles.styleBold14(
                        context,
                      ).copyWith(color: AppColors.coffeeColor),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    CustomText(
                      'timeSettingsDiscription',
                      style: Styles.styleBold14(
                        context,
                      ).copyWith(color: AppColors.coffeeColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16),
                child: TimerSwitchWidget(
                  onChanged: (value) async {
                    await TimeService.setTimerState(value);
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 500),
            child: TimeService.hasTimer
                ? BlocProvider(
                    create: (context) => SettingsCubit(),
                    child: const TimerListViewSection(),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
