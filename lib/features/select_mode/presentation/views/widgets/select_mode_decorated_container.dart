import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/features/select_mode/data/models/select_mode_model.dart';

class SelectModeDecoratedContainer extends StatelessWidget {
  const SelectModeDecoratedContainer({
    super.key,
    required this.selectModeModel,
  });

  final SelectModeModel selectModeModel;

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
          Text(
            selectModeModel.modeTitle,
            style: Styles.styleBold50(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            selectModeModel.modeDescription,
            style: Styles.styleBold25(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
