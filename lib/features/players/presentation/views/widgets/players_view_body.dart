import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/utils/functions/showDialogAlert.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_players_list_view.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_text_form_field.dart';

class PlayersViewBody extends StatelessWidget {
  const PlayersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
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
          hasScrollBody: true,
          child: Column(
            children: [
              const Expanded(
                child: CustomPlayersListView(),
              ),
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
    );
  }

  void nagvigateToGameStarting(BuildContext context) {
    bool canNavigate = context.playersGameModeModel.playersList.length > 2;
    if (canNavigate) {
      context.push(AppRouter.kWordRevealview);
    } else {
      showDialogAlert(
        context,
        title: 'alertTitle'.tr(),
        actionText: 'alertAction'.tr(),
        content: 'alertContent'.tr(),
      );
    }
  }
}
