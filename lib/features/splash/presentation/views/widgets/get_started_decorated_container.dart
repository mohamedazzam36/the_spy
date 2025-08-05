import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/generated/l10n.dart';

class GetStartedDecoratedContainer extends StatelessWidget {
  const GetStartedDecoratedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        S.of(context).gameDescription,
        style: Styles.styleBold25(context),
        textAlign: TextAlign.center,
      ),
    );
  }
}
