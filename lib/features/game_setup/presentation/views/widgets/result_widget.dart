import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/features/game_setup/data/models/spys_voting_info.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/result_grid_view.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/result_header_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/results_leaderboard.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/results_right_word_section.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.spysVotingInfo});

  final List<SpysVotingInfo> spysVotingInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const ResultHeaderWidget(),
          ResultGridView(spysVotingInfo: spysVotingInfo),
          const SliverToBoxAdapter(
            child: ResultsRightWordSection(),
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
