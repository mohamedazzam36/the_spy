import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/utils/app_images.dart';

class SelectModeAppBar extends StatelessWidget {
  const SelectModeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 300,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: SvgPicture.asset(
            Assets.imagesModesWelcomeSvg,
          ),
        ),
      ),
    );
  }
}
