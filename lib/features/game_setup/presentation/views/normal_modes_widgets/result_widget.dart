import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/models/modes_settings.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/game_setup/data/models/normal_modes_models/spys_voting_info.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/result_grid_view.dart';
import 'package:the_spy/features/game_setup/presentation/views/result_header_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/results_leaderboard.dart';
import 'package:the_spy/features/game_setup/presentation/views/results_right_word_section.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.spysVotingInfo});

  final List<SpysVotingInfo> spysVotingInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: MainAppStructure(
        appBarTitle: AppServices.currentCategory.name,
        slivers: [
          const ResultHeaderWidget(),
          ResultGridView(spysVotingInfo: spysVotingInfo),
          SliverToBoxAdapter(
            child: ResultsRightWordSection(
              rightWord: NormalModeSettings.playersShowedWord,
              color: AppColors.coffeeColor,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          const ResultsLeaderboard(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomSmallTextButton(
              text: 'replay'.tr(),
              onPressed: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
