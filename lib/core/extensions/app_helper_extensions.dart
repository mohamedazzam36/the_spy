import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/size_config.dart';
import 'package:the_spy/features/game_setup/presentation/manager/cubits/game_setup_cubit/game_setup_cubit.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';

extension HomeCubitX on BuildContext {
  HomeCubit get homeCubit {
    return BlocProvider.of<HomeCubit>(this);
  }
}

extension GameSetupX on BuildContext {
  GameSetupCubit get gameStartCubit {
    return BlocProvider.of<GameSetupCubit>(this);
  }
}

extension PlayersCubitX on BuildContext {
  PlayersCubit get playersCubit {
    return BlocProvider.of<PlayersCubit>(this);
  }
}

extension Size on BuildContext {
  double get hight {
    return MediaQuery.sizeOf(this).height;
  }

  double get width {
    return MediaQuery.sizeOf(this).width;
  }
}

extension IsMobile on BuildContext {
  bool get isMobile {
    return MediaQuery.sizeOf(this).width <= SizeConfig.mobileWidth;
  }
}
