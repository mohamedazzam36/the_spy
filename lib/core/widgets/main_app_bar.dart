import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
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
  });

  final String appBarTitle;
  final Widget? title;
  final List<Widget>? actions;
  final Color? titleColor;
  final bool floatingAppBar, backButton;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: floatingAppBar,
      collapsedHeight: 75,
      centerTitle: true,
      leading: backButton
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Align(
                child: Container(
                  width: 32,
                  padding: const EdgeInsetsDirectional.only(end: 2, top: 4, bottom: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(color: AppColors.whiteColor),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            )
          : const SizedBox(),
      title:
          title ??
          CustomText(
            appBarTitle,
            style: Styles.styleBold25(
              context,
            ).copyWith(fontSize: 28, color: titleColor),
          ),
      actions: actions,
    );
  }
}
