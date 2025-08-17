import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';

class HomeListViewItem extends StatefulWidget {
  const HomeListViewItem({super.key, required this.itemInfo});

  final ({LinearGradient gradient, String image, String titleName}) itemInfo;

  @override
  State<HomeListViewItem> createState() => _HomeListViewItemState();
}

class _HomeListViewItemState extends State<HomeListViewItem> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: GestureDetector(
        onTapDown: (_) => setState(() => isPressed = true),
        onTapUp: (_) => setState(() => isPressed = false),
        onTapCancel: () => setState(() => isPressed = false),
        child: AnimatedContainer(
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
                : null,
          ),
          child: FittedBox(
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
        ),
      ),
    );
  }
}
