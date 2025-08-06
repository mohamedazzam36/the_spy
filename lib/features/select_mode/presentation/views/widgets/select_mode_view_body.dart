import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/select_mode/data/models/select_mode_model.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_widget.dart';
import 'package:the_spy/generated/l10n.dart';

class SelectModeViewBody extends StatelessWidget {
  const SelectModeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<SelectModeModel> modes = [
      SelectModeModel(
        mode: Mode.normal,
        modeDescription: S.of(context).normalModeDescription,
        backGroundColor: Colors.black12,
      ),
      SelectModeModel(
        modeDescription: S.of(context).blindModeDescription,
        backGroundColor: Colors.red,
        mode: Mode.blind,
      ),
    ];

    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 2,
      itemBuilder: (context, index) {
        return SelectModeWidget(selectModeModel: modes[index]);
      },
    );
  }
}
