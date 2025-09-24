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
  });

  final String appBarTitle;
  final Widget? title;
  final List<Widget>? appBarActions, children;
  final List<Widget> slivers;
  final Color? titleColor;
  final bool floatingAppBar, backButton, hasAppBar;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        hasAppBar
            ? SliverPadding(
                padding: const EdgeInsetsDirectional.only(start: 0, end: 0, top: 16),
                sliver: MainAppBar(
                  appBarTitle: appBarTitle,
                  actions: appBarActions,
                  title: title,
                  titleColor: titleColor,
                  floatingAppBar: floatingAppBar,
                  backButton: backButton,
                ),
              )
            : const SliverToBoxAdapter(),
        children != null
            ? SliverPadding(
                padding: EdgeInsetsDirectional.only(
                  start: 16,
                  end: 16,
                  bottom: 24,
                  top: hasAppBar ? 0 : 50,
                ),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(children!),
                ),
              )
            : const SliverToBoxAdapter(),
        ...slivers,
      ],
    );
  }
}
