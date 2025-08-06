import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/generated/l10n.dart';

class PlayersView extends StatelessWidget {
  const PlayersView({super.key, required this.appBarTitle});

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          appBarTitle,
          style: Styles.styleSemiBold35(context),
        ),
      ),
    );
  }
}
