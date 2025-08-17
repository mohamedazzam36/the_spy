import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class SpysGridViewItem extends StatelessWidget {
  const SpysGridViewItem({super.key, required this.wordName, required this.onPressed});

  final String wordName;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(backgroundColor: kLightPrimaryColor),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.center,
        child: Text(
          wordName,
          style: Styles.styleSemiBold35(context),
        ),
      ),
    );
  }
}
