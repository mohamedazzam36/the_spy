import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/features/game_starting/presentation/views/widgets/custom_word_reveal_card.dart';
import 'package:the_spy/generated/l10n.dart';

class CustomWordRevealWidget extends StatelessWidget {
  const CustomWordRevealWidget({
    super.key,
    required this.wordName,
    this.onPressed,
  });

  final String wordName;
  final void Function()? onPressed;

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
                  CustomWordRevealcard(wordName: wordName),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomSmallTextButton(
                    onPressed: onPressed,
                    text: S.of(context).next,
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
