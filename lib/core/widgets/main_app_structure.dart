import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/main_app_bar.dart';

class MainAppStructure extends StatelessWidget {
  const MainAppStructure({
    super.key,
    this.appBarTitle = '',
    this.title,
    this.appBarActions,
    this.slivers = const [],
    this.children,
    this.titleColor,
    this.floatingAppBar = true,
    this.backButton = true,
    this.hasAppBar = true,
    this.appBarFlexibleSpace,
    this.appBarExpandedHeight,
    this.appBarCollapsedHeight,
    this.hasBottomDivider = true,
  });

  final String appBarTitle;
  final Widget? title, appBarFlexibleSpace;
  final List<Widget>? appBarActions, children;
  final List<Widget> slivers;
  final Color? titleColor;
  final bool floatingAppBar, backButton, hasAppBar, hasBottomDivider;
  final double? appBarExpandedHeight, appBarCollapsedHeight;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        hasAppBar
            ? MainAppBar(
                appBarTitle: appBarTitle,
                actions: appBarActions,
                title: title,
                titleColor: titleColor,
                floatingAppBar: floatingAppBar,
                backButton: backButton,
                appBarCollapsedHeight: appBarCollapsedHeight,
                appBarExpandedHeight: appBarExpandedHeight,
                appBarFlexibleSpace: appBarFlexibleSpace,
                hasBottomDivider: hasBottomDivider,
              )
            : const SliverToBoxAdapter(),
        children != null
            ? SliverList(
                delegate: SliverChildListDelegate(children!),
              )
            : const SliverToBoxAdapter(),
        ...slivers,
      ],
    );
  }
}
