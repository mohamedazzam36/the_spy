import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/enums/game_modes_enum.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/extensions/main_game_modes_extensions.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_grid_view_item.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/sub_modes_view_body.dart';

class MainModesGridView extends StatelessWidget {
  const MainModesGridView({super.key});

  final List<MainGameModes> gameModes = MainGameModes.values;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: MainGameModes.values.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2.7,
        crossAxisCount: context.isMobile ? 1 : 2,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return SelectModeGridViewItem(
          modeInfo: gameModes[index].getModeInfo,
          onTapUp: () {
            AppServices.currentMainMode = gameModes[index];
            context.navigate(
              SubModesViewBody(
                gameModes: gameModes[index].subModes,
              ),
            );
          },
        );
      },
    );
  }
}
