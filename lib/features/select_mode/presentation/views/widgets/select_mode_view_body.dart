import 'package:flutter/material.dart';
import 'package:the_spy/core/models/game_mode_model.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_widget.dart';

class SelectModeViewBody extends StatelessWidget {
  const SelectModeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<GameModeModel> modes = [
      GameModeModel(currentMode: GameModesEnum.classic),
      GameModeModel(currentMode: GameModesEnum.blind),
      GameModeModel(currentMode: GameModesEnum.classicDouble),
      GameModeModel(currentMode: GameModesEnum.blindDouble),
      GameModeModel(currentMode: GameModesEnum.specialPlayers),
    ];

    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: modes.length,
      itemBuilder: (context, index) {
        return SelectModeWidget(gameModeModel: modes[index]);
      },
    );
  }
}
