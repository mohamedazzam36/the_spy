import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/modes_header_container.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_grid_view.dart';

class ModesBackgroundContainer extends StatelessWidget {
  const ModesBackgroundContainer({
    super.key,
  });

  final List<GameModesEnum> modes = const [
    GameModesEnum.classic,
    GameModesEnum.blind,
    GameModesEnum.classicDouble,
    GameModesEnum.blindDouble,
    GameModesEnum.duo,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const ModesHeaderContainer(),
          const SizedBox(
            height: 24,
          ),
          SelectModeGridView(
            modes: modes,
          ),
        ],
      ),
    );
  }
}
