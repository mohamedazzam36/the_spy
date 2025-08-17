import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/game_modes_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/players/presentation/views/widgets/players_view_body.dart';

class PlayersView extends StatelessWidget {
  const PlayersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          appServices.currentMode.getModeInfo.title,
          style: Styles.styleSemiBold35(context),
        ),
      ),
      body: const Padding(
        padding: EdgeInsetsDirectional.only(
          start: 16,
          end: 16,
          top: 24,
          bottom: 24,
        ),
        child: PlayersViewBody(),
      ),
    );
  }
}
