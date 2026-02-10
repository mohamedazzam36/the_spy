import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
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
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.width * .1,
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
                    onPressed: onNextPressed,
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
