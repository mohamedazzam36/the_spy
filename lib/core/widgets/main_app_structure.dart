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
  });

  final String appBarTitle;
  final Widget? title, appBarFlexibleSpace;
  final List<Widget>? appBarActions, children;
  final List<Widget> slivers;
  final Color? titleColor;
  final bool floatingAppBar, backButton, hasAppBar;
  final double? appBarExpandedHeight, appBarCollapsedHeight;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        hasAppBar
            ? SliverPadding(
                padding: const EdgeInsetsDirectional.only(start: 0, end: 0, top: 16),
                sliver: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: MainAppBar(
                    appBarTitle: appBarTitle,
                    actions: appBarActions,
                    title: title,
                    titleColor: titleColor,
                    floatingAppBar: floatingAppBar,
                    backButton: backButton,
                    appBarCollapsedHeight: appBarCollapsedHeight,
                    appBarExpandedHeight: appBarExpandedHeight,
                    appBarFlexibleSpace: appBarFlexibleSpace,
                  ),
                ),
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
