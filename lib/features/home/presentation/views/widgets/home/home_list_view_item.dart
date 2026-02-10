import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/typedefs.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class HomeListViewItem extends StatelessWidget {
  const HomeListViewItem({
    super.key,
    required this.itemInfo,
    required this.isActive,
    required this.onTap,
  });

  final CategoryInfo itemInfo;
  final bool isActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
          transform: Matrix4.identity()..scale(isActive ? 1.04 : 1.0),
          transformAlignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            gradient: itemInfo.gradient,
            borderRadius: BorderRadius.circular(16),
            border: isActive ? Border.all(color: itemInfo.gradient.colors[1], width: 2) : null,
          ),
          child: FittedBox(
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
                  style:
                      Styles.extraLight16(
                        context,
                      ).copyWith(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: AppColors.whiteColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
