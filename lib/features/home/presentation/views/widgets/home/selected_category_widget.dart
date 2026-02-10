import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/functions/helper_functions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/typedefs.dart';
import 'package:the_spy/core/widgets/custom_text_button.dart';
import 'package:the_spy/core/widgets/highlighted_text.dart';

class SelectedCategoryWidget extends StatelessWidget {
  const SelectedCategoryWidget({super.key, required this.categoryUiInfo});

  final CategoryUiInfo categoryUiInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          isRtl(context) ? categoryUiInfo.arImage : categoryUiInfo.enImage,
          width: context.width / 1.4,
        ),
        const SizedBox(
          height: 4,
        ),
        Lottie.asset(categoryUiInfo.animationPath, width: context.width / 1.9),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: HighlightedText(
            text: categoryUiInfo.description,
            highlightedWords: categoryUiInfo.highlightWords,
            style:
                Styles.styleBold14(
                  context,
                ).copyWith(
                  shadows: [
                    const BoxShadow(
                      color: Colors.black,
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: Offset(0, 0.4),
                    ),
                  ],
                ),
            highlightStyle:
                Styles.styleBold14(
                  context,
                ).copyWith(
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 20.0,
                      color: context.homeCubit.currentSoundColors.sliderColor.withAlpha(
                        250,
                      ),
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
          ),
        ),

        // CustomText(
        //   'رجع ذكريات طفولتك مع كرتونك المفضل ',
        //   style:
        //       Styles.styleBold14(
        //         context,
        //       ).copyWith(
        //         shadows: [
        //           const BoxShadow(
        //             color: Colors.black,
        //             blurRadius: 4,
        //             spreadRadius: 2,
        //             offset: Offset(0, 0.4),
        //           ),
        //         ],
        //       ),
        // ),

        // CustomText(
        //   'غامبول ، سبونج بوب ، توم وجيري ..',
        //   style:
        //       Styles.styleBold14(
        //         context,
        //       ).copyWith(
        //         color: Colors.white,
        //         shadows: [
        //           Shadow(
        //             blurRadius: 20.0,
        //             color: context.homeCubit.currentSoundColors.sliderColor.withAlpha(
        //               250,
        //             ),
        //             offset: const Offset(0, 0),
        //           ),
        //         ],
        //       ),
        // ),
        const Spacer(),
        CustomTextButton(
          text: 'start',
          onPressed: () => context.push(AppRouter.kPlayersView, extra: context.homeCubit),
          width: context.width / 2.5,
          textColor: AppColors.coffeeColor,
          borderColor: AppColors.coffeeColor,
        ),
      ],
    );
  }
}
