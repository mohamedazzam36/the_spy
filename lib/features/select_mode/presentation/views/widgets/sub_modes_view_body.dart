import 'package:flutter/material.dart';
import 'package:the_spy/core/enums/game_modes_enum.dart';
import 'package:the_spy/core/widgets/custom_background_container.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_app_bar.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/sub_modes_background_container.dart';

class SubModesViewBody extends StatelessWidget {
  const SubModesViewBody({super.key, required this.gameModes});

  final List<SubGameModes> gameModes;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomBackgroundContainer(
        child: SafeArea(
          top: false,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const SliverPadding(
                  padding: EdgeInsets.only(top: 100),
                  sliver: SelectModeAppBar(),
                ),
                SliverPadding(
                  padding: const EdgeInsetsGeometry.only(bottom: 50),
                  sliver: SliverToBoxAdapter(
                    child: SubModesBackgroundContainer(
                      gameModes: gameModes,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
