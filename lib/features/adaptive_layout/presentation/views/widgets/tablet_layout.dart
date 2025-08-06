import 'package:flutter/material.dart';
import 'package:the_spy/features/select_mode/presentation/views/select_mode.dart';
import 'package:the_spy/features/splash/presentation/views/get_started.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key, required this.isFirstStart});
  final bool isFirstStart;

  @override
  Widget build(BuildContext context) {
    return isFirstStart ? const GetStartedView() : const SelectModeView();
  }
}
