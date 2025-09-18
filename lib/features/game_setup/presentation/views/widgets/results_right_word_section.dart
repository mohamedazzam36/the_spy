import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class ResultsRightWordSection extends StatelessWidget {
  const ResultsRightWordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          'rightWord',
          style: Styles.styleSemiBold35(context),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomText(
          playersModel.playersShowedWord,
          style: Styles.styleSemiBold35(context),
        ),
      ],
    );
  }
}
