import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/questions_and_word_reveal/presentation/views/widgets/word_reveal_body.dart';

class WordRevealview extends StatelessWidget {
  const WordRevealview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: const WordRevealBody(),
    );
  }
}
