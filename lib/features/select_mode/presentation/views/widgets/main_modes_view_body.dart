import 'package:flutter/material.dart';
import 'package:the_spy/core/widgets/custom_background_container.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/main_modes_background_container.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_app_bar.dart';

class MainModesViewBody extends StatelessWidget {
  const MainModesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverPadding(
                padding: EdgeInsets.only(top: 100),
                sliver: SelectModeAppBar(),
              ),
              SliverPadding(
                padding: EdgeInsetsGeometry.only(bottom: 50),
                sliver: SliverToBoxAdapter(
                  child: MainModesBackgroundContainer(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
