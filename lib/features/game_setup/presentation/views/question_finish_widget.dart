import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/question_finish_card.dart';

class QuestionFinishWidget extends StatelessWidget {
  const QuestionFinishWidget({
    super.key,
    required this.onReAskPressed,
    required this.onVotePressed,
  });

  final void Function() onReAskPressed, onVotePressed;

  @override
  Widget build(BuildContext context) {
    return MainBackgroundContainer(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width * .1,
                  vertical: 50,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const QuestionFinishCard(),
                    const SizedBox(
                      height: 50,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          CustomSmallTextButton(
                            text: 'reAsk'.tr(),
                            onPressed: onReAskPressed,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          CustomSmallTextButton(
                            onPressed: onVotePressed,
                            text: 'vote'.tr(),
                          ),
                        ],
                      ),
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
