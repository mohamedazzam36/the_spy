import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/widgets/custom_background_container.dart';
import 'package:the_spy/features/select_mode/presentation/views/widgets/modes_background_container.dart';

class SelectModeViewBody extends StatelessWidget {
  const SelectModeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: SvgPicture.asset(
                      Assets.imagesWelcomeSvg,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ModesBackgroundContainer(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
