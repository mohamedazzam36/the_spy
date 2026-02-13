import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/game_setup/presentation/views/questions_reveal_card.dart';
import 'package:the_spy/features/game_setup/presentation/views/round_title_widget.dart';

class QuestionsRevealWidget extends StatelessWidget {
  const QuestionsRevealWidget({
    super.key,
    required this.askingPlayer,
    required this.askedPlayer,
    required this.onNextPressed,
  });

  final String askingPlayer, askedPlayer;

  final void Function() onNextPressed;
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const RoundTitleWidget(title: 'questionsRound'),
                const Spacer(),
                QuestionsRevealcard(
                  askedPlayer: askedPlayer,
                  askingPlayer: askingPlayer,
                  onPressed: onNextPressed,
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
