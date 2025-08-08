import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/game_starting_body.dart';

class GameStartingview extends StatelessWidget {
  const GameStartingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: const GameStartingBody(),
    );
  }
}
