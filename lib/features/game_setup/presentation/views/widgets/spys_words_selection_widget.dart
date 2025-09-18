import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/spys_grid_view_item.dart';

class SpysWordsSelectionWidget extends StatelessWidget {
  const SpysWordsSelectionWidget({super.key, required this.spyNAme});

  final String spyNAme;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            spyNAme,
            style: Styles.styleSemiBold60(context),
            textAlign: TextAlign.center,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 3,
            crossAxisCount: 2,
          ),
          itemCount: playersModel.playersCategoryWords.length,
          itemBuilder: (context, index) {
            return SpysGridViewItem(
              wordName: playersModel.playersCategoryWords[index],
              onPressed: () => context.gameStartCubit.getNextSpyVote(
                playersModel.playersCategoryWords[index],
              ),
            );
          },
        ),
      ],
    );
  }
}
