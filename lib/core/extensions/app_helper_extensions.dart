import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/size_config.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/normal_modes/normal_game_setup_cubit.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/team_modes/teams_game_setup_cubit.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/settings_cubit/settings_cubit.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

extension HomeCubitX on BuildContext {
  HomeCubit get homeCubit {
    return BlocProvider.of<HomeCubit>(this);
  }
}

extension GameSetupX on BuildContext {
  NormalGameSetupCubit get normalGameStartCubit {
    return BlocProvider.of<NormalGameSetupCubit>(this);
  }

  TeamsGameSetupCubit get teamsGameStartCubit {
    return BlocProvider.of<TeamsGameSetupCubit>(this);
  }
}

extension PlayersCubitX on BuildContext {
  PlayersCubit get playersCubit {
    return BlocProvider.of<PlayersCubit>(this);
  }
}

extension SettingsCubitX on BuildContext {
  SettingsCubit get settingsCubit {
    return BlocProvider.of<SettingsCubit>(this);
  }
}

extension Size on BuildContext {
  double get height {
    return MediaQuery.sizeOf(this).height;
  }

  double get width {
    return MediaQuery.sizeOf(this).width;
  }

  void navigate(Widget screen) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void navigateReplace(Widget screen) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void popTimes(int count) {
    int popped = 0;
    Navigator.popUntil(this, (_) => popped++ >= count);
  }

  void pushAbove(String baseRouteName, Widget newScreen) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(
        builder: (context) => newScreen,
      ),
      (route) => route.settings.name == baseRouteName,
    );
  }
}

extension IsMobile on BuildContext {
  bool get isMobile {
    return MediaQuery.sizeOf(this).width <= SizeConfig.mobileWidth;
  }
}

extension ArabicX on int {
  String get toArabicNumbers {
    const Map<String, String> digits = {
      '0': '٠',
      '1': '١',
      '2': '٢',
      '3': '٣',
      '4': '٤',
      '5': '٥',
      '6': '٦',
      '7': '٧',
      '8': '٨',
      '9': '٩',
    };
    return toString().split('').map((d) => digits[d] ?? d).join('');
  }
}
