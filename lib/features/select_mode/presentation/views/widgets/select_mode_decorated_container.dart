import 'package:flutter/material.dart';
import 'package:the_spy/core/models/game_mode_model.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/functions/access_enums_helper.dart';

class SelectModeDecoratedContainer extends StatelessWidget {
  const SelectModeDecoratedContainer({
    super.key,
    required this.gameModeModel,
  });

  final GameModeModel gameModeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          FittedBox(
            child: Text(
              accessEnumInfo(context, gameModeModel).title,
              style: Styles.styleBold50(context),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            accessEnumInfo(context, gameModeModel).modeDescription,
            style: Styles.styleBold25(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
