import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';

class SelectedCategoryWidget extends StatelessWidget {
  const SelectedCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomTextButton(
        text: 'start',
        onPressed: () => context.push(AppRouter.kPlayersView, extra: context.homeCubit),
        width: context.width / 2,
        textColor: AppColors.coffeeColor,
        borderColor: AppColors.coffeeColor,
      ),
    );
  }
}
