import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/custom_questions_reveal_card.dart';

class CustomQuestionsRevealWidget extends StatelessWidget {
  const CustomQuestionsRevealWidget({
    super.key,
    required this.askingPlayer,
    required this.askedPlayer,
    required this.onPressed,
  });

  final String askingPlayer, askedPlayer;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return CustomScrollView(
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
                  CustomQuestionsRevealcard(
                    askedPlayer: askedPlayer,
                    askingPlayer: askingPlayer,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomSmallTextButton(
                    onPressed: onPressed,
                    text: 'next'.tr(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
