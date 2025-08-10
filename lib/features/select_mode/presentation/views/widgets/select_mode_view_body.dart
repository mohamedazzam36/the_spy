import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_widget.dart';

class SelectModeViewBody extends StatelessWidget {
  const SelectModeViewBody({super.key});

  final List<GameModesEnum> modes = const [
    GameModesEnum.classic,
    GameModesEnum.blind,
    GameModesEnum.classicDouble,
    GameModesEnum.blindDouble,
    GameModesEnum.specialPlayers,
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: modes.length,
      itemBuilder: (context, index) {
        return SelectModeWidget(currentMode: modes[index]);
      },
    );
  }
}
