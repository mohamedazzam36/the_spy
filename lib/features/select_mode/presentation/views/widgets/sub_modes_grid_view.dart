import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/enums/game_modes_enum.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/extensions/sub_game_modes_extensions.dart';
import 'package:the_spy/core/functions/show_main_dialog.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/custom_pop_up.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_grid_view_item.dart';

class SubModesGridView extends StatelessWidget {
  const SubModesGridView({super.key, required this.gameModes});

  final List<SubGameModes> gameModes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: gameModes.length,
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
            if (gameModes[index] == SubGameModes.customClassicSpys ||
                gameModes[index] == SubGameModes.customBlindSpys) {
              showMainDialog(
                context,
                CustomPopUp(
                  title: 'enterSpysNumber',
                  minimumModeNum: 1,
                  onStart: (spysNum) {
                    gameModes[index].initialSetup(spysNum: spysNum);
                    context.push(AppRouter.kHomeView);
                  },
                ),
                onCancel: () {},
              );
            } else if (gameModes[index] == SubGameModes.customTeams) {
              showMainDialog(
                context,
                CustomPopUp(
                  title: 'enterTeamsNumber',
                  minimumModeNum: 2,
                  onStart: (teamsNum) {
                    gameModes[index].initialSetup(teamsNum: teamsNum);
                    context.push(AppRouter.kHomeView);
                  },
                ),
                onCancel: () {},
              );
            } else {
              gameModes[index].initialSetup();
              context.push(AppRouter.kHomeView);
            }
          },
        );
      },
    );
  }
}
