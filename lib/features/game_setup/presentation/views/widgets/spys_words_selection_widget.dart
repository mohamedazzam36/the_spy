import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/core/widgets/custom_small_text_button.dart';

class SpysWordsSelectionWidget extends StatelessWidget {
  const SpysWordsSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: playersModel.playersCategoryWords.length,
          itemBuilder: (context, index) {
            return CustomSmallTextButton(text: playersModel.playersCategoryWords[index]);
          },
        ),
      ],
    );
  }
}
