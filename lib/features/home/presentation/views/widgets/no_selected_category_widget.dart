import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/assets.dart';

class NoSelectedCategoryWidget extends StatelessWidget {
  const NoSelectedCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: SvgPicture.asset(
          Assets.imagesHomeWelcomeSvg,
          width: context.width * 0.7,
        ),
      ),
    );
  }
}
