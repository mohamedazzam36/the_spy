import 'package:flutter/material.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_view_body.dart';

class SelectModeView extends StatelessWidget {
  const SelectModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SelectModeViewBody(),
    );
  }
}
