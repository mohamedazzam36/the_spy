import 'package:go_router/go_router.dart';
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

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const MainAppViews(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const MainAppViews(),
      ),
      GoRoute(
        path: kGameSetupview,
        builder: (context, state) => GameSetupview(
          homeCubit: state.extra as HomeCubit,
        ),
      ),
      GoRoute(
        path: kPlayersView,
        builder: (context, state) => PlayersView(
          homeCubit: state.extra as HomeCubit,
        ),
      ),
      GoRoute(
        path: kSelectModeView,
        builder: (context, state) => const SelectModeView(),
      ),
      GoRoute(
        path: kGetStartedView,
        builder: (context, state) => const GetStartedView(),
      ),
    ],
  );
}
