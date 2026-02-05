import 'package:flutter/widgets.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';

class OrientationAwareWidget extends StatelessWidget {
  const OrientationAwareWidget({
    super.key,
    required this.portraitWidget,
    required this.landscapeWidget,
  });

  final Widget portraitWidget, landscapeWidget;

  @override
  Widget build(BuildContext context) {
    return context.isPortrait ? portraitWidget : landscapeWidget;
  }
}
