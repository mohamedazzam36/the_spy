import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/game_setup/presentation/views/questions_reveal_card.dart';

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
    double width = MediaQuery.sizeOf(context).width;

    return MainBackgroundContainer(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .1,
                  vertical: 50,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QuestionsRevealcard(
                      askedPlayer: askedPlayer,
                      askingPlayer: askingPlayer,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomSmallTextButton(
                      onPressed: onNextPressed,
                      text: 'next'.tr(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
