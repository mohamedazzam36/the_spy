import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_players_list_view.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_players_list_view_item.dart';
import 'package:the_spy/features/players/presentation/views/widgets/custom_text_form_field.dart';
import 'package:the_spy/generated/l10n.dart';

class PlayersViewBody extends StatelessWidget {
  const PlayersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
              const Expanded(child: CustomPlayersListView()),
              const SizedBox(
                height: 8,
              ),
              CustomTextButton(
                text: S.of(context).start,
                onPressed: () {},
                color: Colors.white,
                textStyle: Styles.styleBold50(
                  context,
                ).copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
