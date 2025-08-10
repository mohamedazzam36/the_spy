import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/extentions.dart';

class SelectModeDecoratedContainer extends StatelessWidget {
  const SelectModeDecoratedContainer({
    super.key,
    required this.currentMode,
  });

  final GameModesEnum currentMode;

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
              currentMode.getModeInfo.title,
              style: Styles.styleBold50(context),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            currentMode.getModeInfo.modeDescription,
            style: Styles.styleBold25(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
