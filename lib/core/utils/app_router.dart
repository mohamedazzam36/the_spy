import 'package:go_router/go_router.dart';
import 'package:the_spy/features/splash/presentation/views/get_started.dart';
import 'package:the_spy/features/splash/presentation/views/splash.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kGetStartedView = '/GetStartedView';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const GetStartedView(),
      ),
      GoRoute(
        path: kGetStartedView,
        builder: (context, state) => const GetStartedView(),
      ),
    ],
  );
}
