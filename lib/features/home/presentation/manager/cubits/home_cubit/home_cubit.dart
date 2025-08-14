import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:the_spy/features/home/presentation/views/widgets/leaderboard_view_body.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings_view_body.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int currentNavBarIndex = 1;

  final List<Widget Function()> views = [
    () => const LeaderboardViewBody(),
    () => const HomeViewBody(),
    () => const SettingsViewBody(),
  ];

  final List<String> appBarTitles = [
    'leaderboard'.tr(),
    'theSpy'.tr(),
    'settings'.tr(),
  ];

  void homeNavigation(int index) {
    if (currentNavBarIndex != index) {
      currentNavBarIndex = index;
      emit(HomeSuccess());
    }
  }
}
