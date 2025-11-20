import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/word_reveal_card.dart';

class WordRevealWidget extends StatelessWidget {
  const WordRevealWidget({
    super.key,
    required this.wordName,
  });

  final String wordName;

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
                    WordRevealcard(wordName: wordName),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomSmallTextButton(
                      onPressed: () => context.gameStartCubit.switchBetweenPlayersAndWord(),
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
