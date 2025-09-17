import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';

class ColoredStarsHomeListViewItem extends StatelessWidget {
  const ColoredStarsHomeListViewItem({
    super.key,
    required this.itemInfo,
    required this.isActive,
    required this.onTap,
  });

  final ({LinearGradient gradient, String image, String titleName}) itemInfo;
  final bool isActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: GestureDetector(
        onTap: onTap,

        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: .01,
              bottom: 20,
              child: Image.asset(
                Assets.imagesColoredStarsGif,
                width: 150,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeOut,
              transform: Matrix4.identity()..scale(isActive ? 1.04 : 1.0),
              transformAlignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8),
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                gradient: itemInfo.gradient,
                borderRadius: BorderRadius.circular(16),
                border: isActive ? Border.all(color: itemInfo.gradient.colors[1], width: 2) : null,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          itemInfo.image,
                        ),
                        CustomText(
                          fit: BoxFit.scaleDown,
                          itemInfo.titleName,
                          style: Styles.extraLight16(
                            context,
                          ).copyWith(fontSize: 50, fontWeight: FontWeight.w900, color: kWhiteColor),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    width: 90,
                    top: 5,
                    right: 10,
                    child: Image.asset(
                      Assets.imagesCategoryStarsGif,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
