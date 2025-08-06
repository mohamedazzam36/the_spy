import 'package:flutter/material.dart';
import 'package:the_spy/constants.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/extentions.dart';

class PlayersView extends StatelessWidget {
  const PlayersView({super.key, required this.mode});

  final Mode mode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          mode.getModeName(context),
          style: Styles.styleSemiBold35(context),
        ),
      ),
    );
  }
}
