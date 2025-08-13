import 'package:flutter/material.dart';

class CustomResponsiveText extends StatelessWidget {
  const CustomResponsiveText({super.key, required this.text, required this.style, this.fit});

  final String text;
  final TextStyle style;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: fit ?? BoxFit.scaleDown,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
