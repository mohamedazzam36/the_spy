import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_spy/core/cubits/app_cubit/app_cubit.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/core/utils/simple_bloc_observer.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';
import 'package:the_spy/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  WidgetsBinding.instance.deferFirstFrame();

  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();

  Hive.registerAdapter(PlayerModelAdapter());

  await setupLocator();

  await Future.delayed(
    const Duration(milliseconds: 350),
  );

  WidgetsBinding.instance.allowFirstFrame();

  runApp(const TheSpy());
}

class TheSpy extends StatelessWidget {
  const TheSpy({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              PlayersCubit(playersRepo: getIt.get<PlayersRepo>()),
        ),
        BlocProvider(
          create: (context) => AppCubit(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          textTheme: GoogleFonts.changaTextTheme(),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: kWhiteColor),
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router(),
        locale: const Locale('ar'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
