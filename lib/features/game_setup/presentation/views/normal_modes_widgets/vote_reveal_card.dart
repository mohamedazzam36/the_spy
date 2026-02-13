import 'package:flutter/material.dart';
import 'package:the_spy/core/app_services/time_service.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/game_setup_background_container.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/vote_grid_view.dart';
import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/vote_reveal_timer_header.dart';
import 'package:the_spy/features/players/data/models/player_model.dart';

class VoteRevealCard extends StatelessWidget {
  const VoteRevealCard({super.key, required this.players, required this.votingPlayer});

  final List<PlayerModel> players;
  final PlayerModel votingPlayer;

  @override
  Widget build(BuildContext context) {
    return GameSetupBackgroundContainer(
      child: Column(
        children: [
          TimeService.hasTimer
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: VoteRevealTimerHeader(
                    startingTime: TimeService.playersVotingTime,
                    onFinish: () => context.normalGameStartCubit.endTime(),
                    text: 'voteBeforeTimeOut',
                  ),
                )
              : const SizedBox(),
          CustomText(
            votingPlayer.name,
            style: Styles.styleBold32(context).copyWith(color: AppColors.darkBLueColor),
          ),
          const SizedBox(height: 12),
          VoteGridView(
            players: players,
          ),
        ],
      ),
    );
  }
}

// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:the_spy/core/extensions/app_helper_extensions.dart';
// import 'package:the_spy/core/utils/app_colors.dart';
// import 'package:the_spy/core/utils/app_images.dart';
// import 'package:the_spy/core/utils/app_styles.dart';
// import 'package:the_spy/core/widgets/custom_text.dart';
// import 'package:the_spy/features/game_setup/presentation/views/custom_square_button.dart';
// import 'package:the_spy/features/game_setup/presentation/views/normal_modes_widgets/game_setup_background_container.dart';

// class QuestionFinishCard extends StatelessWidget {
//   const QuestionFinishCard({
//     super.key,
//     required this.onReAskPressed,
//     required this.onVotePressed,
//   });

//   final void Function() onReAskPressed, onVotePressed;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       child: GameSetupBackgroundContainer(
//         child: Column(
//           children: [
//             Lottie.asset(
//               Assets.imagesCatLoadingAnimation,
//               width: context.width * 0.35,
//             ),
//             const SizedBox(height: 12),
//             FittedBox(
//               fit: BoxFit.scaleDown,
//               child: Text(
//                 'knowTheNextStage'.tr(),
//                 textAlign: TextAlign.center,
//                 style: Styles.stylesLight16(context),
//               ),
//             ),
//             const SizedBox(height: 24),
//             Row(
//               children: [
//                 Expanded(
//                   child: CustomSquareButton(
//                     iconPath: Assets.imagesQuestionMarkIcon,
//                     title: 'reAsk',
//                     subTitleWidget: Column(
//                       children: [
//                         Row(
//                           spacing: 2,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CustomText('inCaseOfability', style: Styles.styleBold12(context)),
//                             CustomText(
//                               'theSpy',
//                               style: Styles.styleBold12(
//                                 context,
//                               ).copyWith(color: AppColors.redColor),
//                             ),
//                             CustomText(
//                               'of',
//                               textAlign: TextAlign.center,
//                               style: Styles.styleBold12(context),
//                             ),
//                           ],
//                         ),
//                         CustomText(
//                           'hiding',
//                           textAlign: TextAlign.center,
//                           style: Styles.styleBold12(context),
//                         ),
//                       ],
//                     ),
//                     onPressed: onReAskPressed,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 24,
//                 ),
//                 Expanded(
//                   child: CustomSquareButton(
//                     iconPath: Assets.imagesVoteIcon,
//                     title: 'vote',
//                     subTitleWidget: Column(
//                       children: [
//                         Row(
//                           spacing: 2,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CustomText('inCaseOfKnowing', style: Styles.styleBold12(context)),
//                           ],
//                         ),
//                         CustomText(
//                           'theSpy',
//                           style: Styles.styleBold12(context).copyWith(color: AppColors.redColor),
//                         ),
//                       ],
//                     ),
//                     onPressed: onVotePressed,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
