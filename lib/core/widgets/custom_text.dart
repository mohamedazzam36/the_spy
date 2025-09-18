import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    super.key,
    required this.style,
    this.fit,
    this.alignment = Alignment.center,
  });

  final String text;
  final TextStyle style;
  final BoxFit? fit;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: alignment,
      fit: fit ?? BoxFit.scaleDown,
      child: Text(
        text.tr(),
        style: style,
      ),
    );
  }
}
