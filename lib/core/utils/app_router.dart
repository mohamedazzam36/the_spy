import 'package:go_router/go_router.dart';
import 'package:the_spy/features/adaptive_layout/presentation/views/adaptive_layout.dart';
import 'package:the_spy/features/adaptive_layout/presentation/views/widgets/desktop_layout.dart';
import 'package:the_spy/features/adaptive_layout/presentation/views/widgets/mobile_layout.dart';
import 'package:the_spy/features/adaptive_layout/presentation/views/widgets/tablet_layout.dart';
import 'package:the_spy/features/home/presentation/views/home.dart';
import 'package:the_spy/features/players/presentation/views/players.dart';
import 'package:the_spy/features/select_mode/presentation/views/select_mode.dart';
import 'package:the_spy/features/splash/presentation/views/get_started.dart';
import 'package:the_spy/features/splash/presentation/views/splash.dart';

abstract class AppRouter {
  // static const String kSplashView = '/';
  static const String kAdaptiveLayoutView = '/AdaptiveLayoutView';
  static const String kGetStartedView = '/GetStartedView';
  static const String kSelectModeView = '/SelectModeView';
  static const String kHomeView = '/HomeView';
  static const String kPlayersView = '/';
  static GoRouter router = GoRouter(
    routes: [
      // GoRoute(
      //   path: kSplashView,
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kPlayersView,
        builder: (context, state) => const PlayersView(),
      ),
      GoRoute(
        path: kSelectModeView,
        builder: (context, state) => const SelectMode(),
      ),
      GoRoute(
        path: kGetStartedView,
        builder: (context, state) => const GetStartedView(),
      ),
      GoRoute(
        path: kAdaptiveLayoutView,
        builder: (context, state) => AdaptiveLayoutView(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout(),
        ),
      ),
    ],
  );
}
