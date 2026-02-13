import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/features/game_setup/presentation/views/round_title_widget.dart';
import 'package:the_spy/features/game_setup/presentation/views/word_reveal_card.dart';

class WordRevealWidget extends StatelessWidget {
  const WordRevealWidget({
    super.key,
    required this.wordName,
    required this.onNextPressed,
  });

  final String wordName;
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
                const RoundTitleWidget(title: 'wordsRound'),
                const Spacer(),
                WordRevealcard(
                  wordName: wordName,
                  onNextPressed: onNextPressed,
                ),
                const SizedBox(
                  height: 50,
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
