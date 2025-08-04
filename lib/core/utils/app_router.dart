import 'package:go_router/go_router.dart';
import 'package:the_spy/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
