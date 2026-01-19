import 'package:flutter/material.dart';
import 'package:the_spy/core/enums/game_modes_enum.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/modes_header_container.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/sub_modes_grid_view.dart';

class SubModesBackgroundContainer extends StatelessWidget {
  const SubModesBackgroundContainer({
    super.key,
    required this.gameModes,
  });

  final List<SubGameModes> gameModes;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
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
          SubModesGridView(
            gameModes: gameModes,
          ),
        ],
      ),
    );
  }
}
