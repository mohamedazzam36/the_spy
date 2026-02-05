import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/widgets/full_screen_wrapper.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/main_app_views.dart';
import 'package:the_spy/features/players/presentation/views/players_view.dart';
import 'package:the_spy/features/game_setup/presentation/views/game_setup.dart';
import 'package:the_spy/features/select_mode/presentation/views/select_mode.dart';
import 'package:the_spy/features/splash/presentation/views/get_started.dart';
import 'package:the_spy/features/splash/presentation/views/splash.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kAdaptiveLayoutView = '/AdaptiveLayoutView';
  static const String kGetStartedView = '/GetStartedView';
  static const String kSelectModeView = '/SelectModeView';
  static const String kHomeView = '/HomeView';
  static const String kPlayersView = '/PlayersView';
  static const String kGameSetupview = '/GameSetupview';

  static GoRouter router() => GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        pageBuilder: (context, state) =>
            fadeTransitionPage(const FullScreenWrapper(child: SplashView()), state),
      ),
      GoRoute(
        path: kHomeView,
        pageBuilder: (context, state) =>
            fadeTransitionPage(const FullScreenWrapper(child: MainAppViews()), state),
      ),
      GoRoute(
        path: kGameSetupview,
        pageBuilder: (context, state) => fadeTransitionPage(
          FullScreenWrapper(child: GameSetupview(homeCubit: state.extra as HomeCubit)),
          state,
        ),
      ),
      GoRoute(
        path: kPlayersView,
        pageBuilder: (context, state) => fadeTransitionPage(
          FullScreenWrapper(child: PlayersView(homeCubit: state.extra as HomeCubit)),
          state,
        ),
      ),
      GoRoute(
        path: kSelectModeView,
        pageBuilder: (context, state) =>
            fadeTransitionPage(const FullScreenWrapper(child: SelectModeView()), state),
      ),
      GoRoute(
        path: kGetStartedView,
        pageBuilder: (context, state) =>
            fadeTransitionPage(const FullScreenWrapper(child: GetStartedView()), state),
      ),
    ],
  );
}

CustomTransitionPage fadeTransitionPage(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(microseconds: 500),
    reverseTransitionDuration: const Duration(microseconds: 500),
    transitionsBuilder: (_, animation, _, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
