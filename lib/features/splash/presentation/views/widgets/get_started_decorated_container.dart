import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class GetStartedDecoratedContainer extends StatelessWidget {
  const GetStartedDecoratedContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: Styles.styleBold25(context),
        textAlign: TextAlign.center,
      ),
    );
  }
}
