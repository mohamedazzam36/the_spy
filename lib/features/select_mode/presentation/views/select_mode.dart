import 'package:flutter/material.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/main_modes_view_body.dart';

class SelectModeView extends StatelessWidget {
  const SelectModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainModesViewBody(),
    );
  }
}
