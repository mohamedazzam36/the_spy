import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/core/utils/functions/showDialogAlert.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_players_list_view.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_text_form_field.dart';
import 'package:the_spy/generated/l10n.dart';

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
                text: S.of(context).start,
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
    bool canNavigate = accessPlayerCubit(context).playersList.length > 2;
    if (canNavigate) {
      context.push(AppRouter.kWordRevealview);
    } else {
      showDialogAlert(
        context,
        title: S.of(context).alertTitle,
        actionText: S.of(context).alertAction,
        content: S.of(context).alertContent,
      );
    }
  }
}
