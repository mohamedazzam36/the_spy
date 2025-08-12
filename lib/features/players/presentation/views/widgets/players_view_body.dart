import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/functions/show_dialog_alert.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/players/data/repos/players_repo.dart';
import 'package:the_spy/features/players/presentation/manager/cubit/players_cubit.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_players_list_view.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_text_form_field.dart';

class PlayersViewBody extends StatelessWidget {
  const PlayersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayersCubit(playersRepo: getIt<PlayersRepo>()),
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: CustomTextFormField(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox(height: 200, child: CustomPlayersListView())),
                const SizedBox(
                  height: 8,
                ),
                CustomTextButton(
                  text: 'start'.tr(),
                  onPressed: () {
                    nagvigateToGameStarting(context);
                  },
                  color: kWhiteColor,
                  textStyle: Styles.styleBold50(
                    context,
                  ).copyWith(color: kBlackColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void nagvigateToGameStarting(BuildContext context) {
    int playesNum = playersModel.playersList.length;
    int spysNum = appServices.currentMode.getModeInfo.numOfSpys;
    bool canNavigate = playesNum >= (spysNum * 2 + 1);

    if (canNavigate) {
      context.push(AppRouter.kWordRevealview);
    } else {
      playersDialogAlert(context, reqPlayers: (spysNum * 2 + 1));
    }
  }
}
