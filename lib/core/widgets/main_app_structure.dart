import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/main_app_bar.dart';

class MainAppStructure extends StatelessWidget {
  const MainAppStructure({
    super.key,
    required this.appBarTitle,
    this.title,
    this.appBarActions,
    this.slivers = const [],
    this.children,
    this.titleColor,
  });

  final String appBarTitle;
  final Widget? title;
  final List<Widget>? appBarActions, children;
  final List<Widget> slivers;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsetsDirectional.only(start: 0, end: 0, top: 16),
          sliver: MainAppBar(
            appBarTitle: appBarTitle,
            actions: appBarActions,
            title: title,
            titleColor: titleColor,
          ),
        ),
        children != null
            ? SliverPadding(
                padding: const EdgeInsetsDirectional.only(start: 54, end: 54, bottom: 24),
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
