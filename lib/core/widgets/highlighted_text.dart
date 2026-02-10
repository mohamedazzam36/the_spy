import 'package:flutter/material.dart';

class HighlightedText extends StatelessWidget {
  const HighlightedText({
    super.key,
    required this.text,
    required this.highlightedWords,
    required this.highlightStyle,
    required this.style,
  });

  final String text;
  final List<String> highlightedWords;
  final TextStyle highlightStyle;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    final words = text.split(' ');

    return Text.rich(
      style: style,
      TextSpan(
        children: words.map((word) {
          final isHighlighted = highlightedWords.contains(word.toLowerCase());

          return TextSpan(
            text: '$word ',
            style: isHighlighted ? highlightStyle : null,
          );
        }).toList(),
      ),
    );
  }
}
