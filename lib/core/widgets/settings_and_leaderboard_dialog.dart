import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class SettingsAndLeaderboardDialog extends StatelessWidget {
  const SettingsAndLeaderboardDialog({
    super.key,
    // this.headerWidget,
    required this.title,
    // this.subTitle,
    required this.onYesPressed,
    required this.onNoPressed,
  });

  // final Widget headerWidget;
  final String title;
  // final String subTitle;
  final void Function() onYesPressed, onNoPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 46),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: AppColors.coffeeColor, width: 3),
          ),
          constraints: const BoxConstraints(maxWidth: 500, maxHeight: 150),

          child: Column(
            children: [
              // headerWidget,
              CustomText(
                title,
                style: Styles.styleBold25(
                  context,
                ).copyWith(color: AppColors.coffeeColor, fontSize: 15),
              ),

              // CustomText(
              //     subTitle!,
              //     style: Styles.styleBold25(context).copyWith(color: AppColors.coffeeColor),
              //   )
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 32,
                    child: TextButton(
                      onPressed: onNoPressed,
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffc41b16),
                        padding: const EdgeInsets.symmetric(horizontal: 38),
                      ),
                      child: CustomText('no', style: Styles.styleBold14(context)),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                    child: TextButton(
                      onPressed: onYesPressed,
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xff239892),
                        padding: const EdgeInsets.symmetric(horizontal: 38),
                      ),
                      child: CustomText('yes', style: Styles.styleBold14(context)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
