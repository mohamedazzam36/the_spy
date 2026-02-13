import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/question_finish_card.dart';
import 'package:the_spy/features/game_setup/presentation/views/round_title_widget.dart';

class QuestionFinishWidget extends StatelessWidget {
  const QuestionFinishWidget({
    super.key,
    required this.onReAskPressed,
    required this.onVotePressed,
  });

  final void Function() onReAskPressed, onVotePressed;

  @override
  Widget build(BuildContext context) {
    return MainAppStructure(
      appBarTitle: AppServices.currentCategory.name,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                const Spacer(),
                const RoundTitleWidget(title: 'majorityOption'),
                const Spacer(),
                QuestionFinishCard(
                  onReAskPressed: onReAskPressed,
                  onVotePressed: onVotePressed,
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
