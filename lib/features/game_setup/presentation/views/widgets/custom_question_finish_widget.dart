import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/custom_question_finish_card.dart';

class CustomQuestionFinishWidget extends StatelessWidget {
  const CustomQuestionFinishWidget({
    super.key,
    required this.votePressed,
    required this.reQuestionPressed,
  });

  final void Function() votePressed;
  final void Function() reQuestionPressed;

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
                  const CustomQuestionFinishCard(),
                  const SizedBox(
                    height: 50,
                  ),
                  FittedBox(
                    child: Row(
                      children: [
                        CustomSmallTextButton(
                          text: 'اعاده الاسئله',
                          onPressed: reQuestionPressed,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        CustomSmallTextButton(onPressed: votePressed, text: 'تصويت'),
                      ],
                    ),
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
