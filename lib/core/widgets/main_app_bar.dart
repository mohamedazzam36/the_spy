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
  });

  final String appBarTitle;
  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: true,
      collapsedHeight: 75,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.whiteColor,
        ),
      ),
      title:
          title ??
          CustomText(
            appBarTitle,
            style:
                Styles.styleBold25(
                  context,
                ).copyWith(
                  fontSize: 25,
                ),
          ),
      actions: actions,
    );
  }
}
