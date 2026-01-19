import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/models/team_model.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/game_setup/presentation/views/team_modes_widgets/teams_members_reveal_list_view.dart';

class TeamsInitVotingWidget extends StatelessWidget {
  const TeamsInitVotingWidget({super.key, required this.teamsInfo, required this.onNextPressed});

  final List<TeamModel> teamsInfo;
  final void Function() onNextPressed;

  @override
  Widget build(BuildContext context) {
    return MainBackgroundContainer(
      padding: const EdgeInsets.all(12),
      child: MainAppStructure(
        hasAppBar: false,
        slivers: [
          SliverToBoxAdapter(
            child: CustomText('results', style: Styles.styleBold50(context)),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          TeamsMembersRevealListView(teamsInfo: teamsInfo),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(
            child: Align(
              child: CustomSmallTextButton(
                text: 'next'.tr(),
                onPressed: onNextPressed,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
