import 'package:flutter/material.dart';
import 'package:the_spy/features/home/presentation/views/widgets/change_language_section.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: ChangeLanguageSection()),
      ],
    );
  }
}
