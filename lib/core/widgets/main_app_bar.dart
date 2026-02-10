import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/functions/helper_functions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    required this.appBarTitle,
    this.title,
    this.actions,
    this.titleColor,
    required this.floatingAppBar,
    required this.backButton,
    this.appBarFlexibleSpace,
    this.appBarExpandedHeight,
    this.appBarCollapsedHeight,
    this.hasBottomDivider = false,
  });

  final String appBarTitle;
  final Widget? title, appBarFlexibleSpace;
  final List<Widget>? actions;
  final Color? titleColor;
  final bool floatingAppBar, backButton, hasBottomDivider;
  final double? appBarExpandedHeight, appBarCollapsedHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      primary: false,
      backgroundColor: Colors.transparent,
      floating: floatingAppBar,
      collapsedHeight: appBarCollapsedHeight ?? 75,
      centerTitle: true,
      expandedHeight: appBarExpandedHeight,
      leadingWidth: 64,
      actionsPadding: const .directional(end: 12),
      flexibleSpace: appBarFlexibleSpace,
      leading: backButton
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Align(
                child: Transform.rotate(
                  angle: isRtl(context) ? 0 : math.pi,
                  child: SvgPicture.asset(
                    Assets.imagesBackIcon,
                    width: 36,
                    colorFilter: const ColorFilter.mode(AppColors.coffeeColor, BlendMode.srcIn),
                  ),
                ),
              ),
            )
          : const SizedBox(),
      title:
          title ??
          CustomText(
            appBarTitle,
            style: Styles.styleBold32(
              context,
            ).copyWith(color: titleColor),
          ),
      actions: actions,
      bottom: hasBottomDivider
          ? PreferredSize(
              preferredSize: const Size(double.infinity, 0),
              child: Divider(color: Colors.grey.withAlpha(150)),
            )
          : null,
    );
  }
}
