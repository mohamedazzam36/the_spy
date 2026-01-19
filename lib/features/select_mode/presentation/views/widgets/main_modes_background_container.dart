import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/main_modes_grid_view.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/modes_header_container.dart';

class MainModesBackgroundContainer extends StatelessWidget {
  const MainModesBackgroundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 24,
          ),
          ModesHeaderContainer(),
          SizedBox(
            height: 24,
          ),
          MainModesGridView(),
        ],
      ),
    );
  }
}
