import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';

class ColoredStarsHomeListViewItem extends StatefulWidget {
  const ColoredStarsHomeListViewItem({super.key, required this.itemInfo});

  final ({LinearGradient gradient, String image, String titleName}) itemInfo;

  @override
  State<ColoredStarsHomeListViewItem> createState() => _ColoredStarsHomeListViewItemState();
}

class _ColoredStarsHomeListViewItemState extends State<ColoredStarsHomeListViewItem> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: GestureDetector(
        onTapDown: (_) => setState(() => isPressed = true),
        onTapUp: (_) => setState(() => isPressed = false),
        onTapCancel: () => setState(() => isPressed = false),
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
                // fit: BoxFit.fill,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeOut,
              transform: Matrix4.identity()..scale(isPressed ? 0.95 : 1.0),
              transformAlignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8),
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                gradient: widget.itemInfo.gradient,
                borderRadius: BorderRadius.circular(16),
                border: isPressed
                    ? Border.all(color: widget.itemInfo.gradient.colors[1], width: 2)
                    : Border.all(color: widget.itemInfo.gradient.colors[3], width: 2),
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
                          widget.itemInfo.image,
                        ),
                        CustomResponsiveText(
                          fit: BoxFit.scaleDown,
                          text: widget.itemInfo.titleName,
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
