import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';

class SelectedCategoryWidget extends StatelessWidget {
  const SelectedCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            context.push(AppRouter.kPlayersView);
          },
          child: CustomText(
            'start',
            style: Styles.styleBold25(context),
          ),
        ),
      ),
    );
  }
}
