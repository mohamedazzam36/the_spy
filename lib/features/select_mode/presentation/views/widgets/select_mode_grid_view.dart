import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/select_mode_grid_view_item.dart';

class SelectModeGridView extends StatelessWidget {
  const SelectModeGridView({super.key, required this.modes});

  final List<GameModesEnum> modes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          itemCount: modes.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2.7,
            crossAxisCount: context.isMobile ? 1 : 2,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return SelectModeGridViewItem(currentMode: modes[index]);
          },
        ),
      ],
    );
  }
}
