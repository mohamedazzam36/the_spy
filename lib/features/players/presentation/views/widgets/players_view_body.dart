import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/extensions/categories_info_extensions.dart';
import 'package:the_spy/core/extensions/game_modes_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/functions/show_dialog_alert.dart';
import 'package:the_spy/core/service_locator/service_locator.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
import 'package:the_spy/core/widgets/main_background_container.dart';
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
      child: MainBackgroundContainer(
        padding: const EdgeInsets.only(bottom: 32),
        child: MainAppStructure(
          appBarTitle: AppServices.currentCategory.getCategoryItemInfo.titleName,
          titleColor: AppColors.coffeeColor,
          slivers: [
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              sliver: SliverToBoxAdapter(
                child: CustomTextFormField(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsetsDirectional.only(start: 18, end: 18, top: 8),
              sliver: SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  spacing: 8,
                  children: [
                    const Expanded(child: SizedBox(height: 170, child: CustomPlayersListView())),
                    CustomTextButton(
                      text: 'start'.tr(),
                      onPressed: () => nagvigateToGameStarting(context),
                      textColor: AppColors.coffeeColor,
                      borderColor: AppColors.coffeeColor,
                      width: context.width * 0.5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void nagvigateToGameStarting(BuildContext context) {
    int playesNum = playersModel.playersList.length;
    int spysNum = AppServices.currentMode.numOfSpys;
    bool canNavigate = playesNum >= (spysNum * 2 + 1);

    if (canNavigate) {
      context.push(AppRouter.kGameSetupview, extra: context.homeCubit);
    } else {
      playersDialogAlert(context, reqPlayers: (spysNum * 2 + 1));
    }
  }
}
