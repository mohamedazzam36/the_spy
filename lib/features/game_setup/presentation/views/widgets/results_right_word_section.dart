import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';

class ResultsRightWordSection extends StatelessWidget {
  const ResultsRightWordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomResponsiveText(
          text: 'rightWord'.tr(),
          style: Styles.styleSemiBold35(context),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomResponsiveText(
          text: playersModel.playersShowedWord,
          style: Styles.styleSemiBold35(context),
        ),
      ],
    );
  }
}
