import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/size_config.dart';

class AdaptiveLayoutView extends StatelessWidget {
  const AdaptiveLayoutView({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width <= SizeConfig.mobileWidth) {
      return mobileLayout(context);
    } else if (width <= SizeConfig.tabletWidth) {
      return tabletLayout(context);
    } else {
      return desktopLayout(context);
    }
  }
}
