import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/main_app_bar.dart';

class MainAppStructure extends StatelessWidget {
  const MainAppStructure({
    super.key,
    required this.appBarTitle,
    this.title,
    this.actions,
    required this.sliver,
  });

  final String appBarTitle;
  final Widget? title;
  final Widget sliver;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsetsDirectional.only(start: 46, end: 46, top: 16),
          sliver: MainAppBar(
            appBarTitle: appBarTitle,
            actions: actions,
            title: title,
          ),
        ),
        SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 16), sliver: sliver),
      ],
    );
  }
}
