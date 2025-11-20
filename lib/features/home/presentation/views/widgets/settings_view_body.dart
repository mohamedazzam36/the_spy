import 'package:flutter/material.dart';
import 'package:the_spy/features/home/presentation/views/widgets/change_language_section.dart';
import 'package:the_spy/features/home/presentation/views/widgets/timer_change_section.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: TimerChangeSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(child: ChangeLanguageSection()),
      ],
    );
  }
}
