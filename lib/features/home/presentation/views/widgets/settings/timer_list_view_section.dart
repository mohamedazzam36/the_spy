import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/functions/helper_functions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/settings_cubit/settings_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/custom_drop_down_header.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/times_list_view.dart';

class TimerListViewSection extends StatefulWidget {
  const TimerListViewSection({super.key});

  @override
  State<TimerListViewSection> createState() => _TimerListViewSectionState();
}

class _TimerListViewSectionState extends State<TimerListViewSection> {
  late bool isArabic;
  late final OverlayPortalController _playersTimesController = OverlayPortalController();
  final LayerLink _playersLayerLink = LayerLink();
  late final OverlayPortalController _spysTimesController = OverlayPortalController();
  final LayerLink _spysLayerLink = LayerLink();

  @override
  void initState() {
    context.settingsCubit.playersTimerIndex = context.settingsCubit.playersTimes.indexOf(
      TimeService.playersVotingTime,
    );
    context.settingsCubit.spysTimerIndex = context.settingsCubit.spysTimes.indexOf(
      TimeService.spysVotingTime,
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    isArabic = isRtl(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            CustomText(
              'votingTime',
              style: Styles.styleMedium16(context).copyWith(color: AppColors.coffeeColor),
            ),
            const SizedBox(
              height: 6,
            ),
            OverlayPortal(
              controller: _playersTimesController,
              overlayChildBuilder: (context) {
                return TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 200),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(opacity: value, child: child),
                  child: TapRegion(
                    groupId: 'playersGroup',
                    onTapOutside: (event) {
                      _playersTimesController.hide();
                      setState(() {});
                    },
                    child: Align(
                      child: CompositedTransformFollower(
                        link: _playersLayerLink,
                        offset: const Offset(0, 32),
                        child: TimesListView(
                          isArabicNumber: isArabic,
                          timesList: context.settingsCubit.playersTimes,
                          seletedIndex: context.settingsCubit.playersTimerIndex,
                          onTap: (newTimeIndex) {
                            context.settingsCubit.changePlayersTimer(newTimeIndex);
                            _playersTimesController.hide();
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: CompositedTransformTarget(
                link: _playersLayerLink,
                child: TapRegion(
                  groupId: 'playersGroup',
                  child: CustomDropDownHeader(
                    onPressed: () {
                      setState(() {
                        _playersTimesController.toggle();
                      });
                    },
                    isIconRotated: _playersTimesController.isShowing,
                    time: isArabic
                        ? TimeService.playersVotingTime.toArabicNumbers
                        : TimeService.playersVotingTime.toString(),
                    seconds: getArabicSecWord(TimeService.playersVotingTime),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomText(
              'wordVotingTime',
              style: Styles.styleMedium16(context).copyWith(color: AppColors.coffeeColor),
            ),
            const SizedBox(
              height: 6,
            ),
            OverlayPortal(
              controller: _spysTimesController,
              overlayChildBuilder: (context) {
                return TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 200),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) => Opacity(opacity: value, child: child),
                  child: TapRegion(
                    groupId: 'spysGroup',
                    onTapOutside: (event) {
                      _spysTimesController.hide();
                      setState(() {});
                    },
                    child: Align(
                      child: CompositedTransformFollower(
                        link: _spysLayerLink,
                        offset: const Offset(0, 32),
                        child: TimesListView(
                          isArabicNumber: isArabic,
                          timesList: context.settingsCubit.spysTimes,
                          seletedIndex: context.settingsCubit.spysTimerIndex,
                          onTap: (newTimeIndex) {
                            context.settingsCubit.changeSpysTimer(newTimeIndex);
                            _spysTimesController.hide();
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: CompositedTransformTarget(
                link: _spysLayerLink,
                child: TapRegion(
                  groupId: 'spysGroup',
                  child: CustomDropDownHeader(
                    onPressed: () {
                      setState(() {
                        _spysTimesController.toggle();
                      });
                    },
                    isIconRotated: _spysTimesController.isShowing,
                    time: isArabic
                        ? TimeService.spysVotingTime.toArabicNumbers
                        : TimeService.spysVotingTime.toString(),
                    seconds: getArabicSecWord(TimeService.spysVotingTime),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        );
      },
    );
  }

  String getArabicSecWord(int time) {
    if (isArabic) {
      if (time <= 10 && time >= 3) {
        return 'seconds';
      } else {
        return 'second';
      }
    } else {
      return 'seconds';
    }
  }
}
