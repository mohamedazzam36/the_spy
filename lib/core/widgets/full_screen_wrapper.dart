import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_spy/core/utils/full_screen_controller.dart';

class FullScreenWrapper extends StatefulWidget {
  const FullScreenWrapper({super.key, required this.child});

  final Widget child;
  @override
  State<FullScreenWrapper> createState() => _FullScreenWrapperState();
}

class _FullScreenWrapperState extends State<FullScreenWrapper> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    FullScreenController.enable();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: Colors.black.withAlpha(150)),
    );
    super.initState();
  }

  @override
  void didChangeMetrics() {
    final double viewInsetsBottom = View.of(context).viewPadding.bottom;

    if (viewInsetsBottom > 0) {
      Future.delayed(const Duration(milliseconds: 1200), () {
        FullScreenController.enable();
      });
    }
  }

  @override
  void dispose() {
    FullScreenController.disable();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
