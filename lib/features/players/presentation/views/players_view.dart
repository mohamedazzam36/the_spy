import 'package:flutter/material.dart';
import 'package:the_spy/features/players/presentation/views/widgets/players_view_body.dart';

class PlayersView extends StatelessWidget {
  const PlayersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PlayersViewBody(),
    );
  }
}
