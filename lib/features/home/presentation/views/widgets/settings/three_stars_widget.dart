import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/app_images.dart';

class ThreeStarsWidget extends StatelessWidget {
  const ThreeStarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            spacing: 200,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesStarIcon,
                width: 24,
              ),
              Image.asset(
                Assets.imagesStarIcon,
                width: 24,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 15,
          child: Image.asset(
            Assets.imagesStarIcon,
            width: 24,
          ),
        ),
      ],
    );
  }
}
