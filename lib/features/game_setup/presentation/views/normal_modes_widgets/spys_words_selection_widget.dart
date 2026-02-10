import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/custom_timer.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/spys_grid_view_item.dart';

class SpysWordsSelectionWidget extends StatelessWidget {
  const SpysWordsSelectionWidget({super.key, required this.spyNAme});

  final String spyNAme;

  @override
  Widget build(BuildContext context) {
    return MainAppStructure(
      appBarTitle: AppServices.currentCategory.name,
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        SliverToBoxAdapter(
          child: TimeService.hasTimer
              ? CustomTimer(
                  startingTime: TimeService.spysVotingTime,
                  onFinish: () => context.normalGameStartCubit.getNextSpyVote(''),
                )
              : const SizedBox(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            spyNAme,
            style: Styles.styleSemiBold60(context),
            textAlign: TextAlign.center,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 3,
            crossAxisCount: 2,
          ),
          itemCount: NormalModeSettings.playersCategoryWords.length,
          itemBuilder: (context, index) {
            return SpysGridViewItem(
              wordName: NormalModeSettings.playersCategoryWords[index],
              onPressed: () => context.normalGameStartCubit.getNextSpyVote(
                NormalModeSettings.playersCategoryWords[index],
              ),
            );
          },
        ),
      ],
    );
  }
}
