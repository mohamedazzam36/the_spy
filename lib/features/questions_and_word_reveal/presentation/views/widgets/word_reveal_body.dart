import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/utils/size_config.dart';

class WordRevealBody extends StatelessWidget {
  const WordRevealBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            fit: StackFit.expand,
            children: [
              FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  Assets.imagesNoBgLogo,
                  fit: BoxFit.cover,
                  color: Colors.black,
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: const SizedBox(),
              ),
              Center(
                child: Text(
                  'ddddddddddddddddddddddddddddddd',
                  style: Styles.styleSemiBold35(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
