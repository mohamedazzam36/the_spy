import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:the_spy/generated/l10n.dart';

void main() {
  runApp(const TheSpy());
}

class TheSpy extends StatelessWidget {
  const TheSpy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Row(
              children: [
                Text(S.of(context).title),
              ],
            ),
          );
        },
      ),
    );
  }
}
