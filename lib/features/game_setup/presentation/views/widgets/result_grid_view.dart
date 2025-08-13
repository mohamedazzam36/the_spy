import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/game_setup/data/models/spys_voting_info.dart';
import 'package:the_spy/features/game_setup/presentation/views/widgets/result_grid_view_item.dart';

class ResultGridView extends StatelessWidget {
  const ResultGridView({super.key, required this.spysVotingInfo});

  final List<SpysVotingInfo> spysVotingInfo;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.7,
      ),
      itemCount: spysVotingInfo.length,
      itemBuilder: (context, index) {
        return ResultGridViewItem(
          spyName: spysVotingInfo[index].theSpy.name,
          votedWord: spysVotingInfo[index].votedWord,
          isSpyTrue: spysVotingInfo[index].votedWord == playersModel.playersShowedWord,
        );
      },
    );
  }
}
