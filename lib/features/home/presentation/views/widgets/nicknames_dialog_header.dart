import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class NicknamesDialogHeader extends StatelessWidget {
  const NicknamesDialogHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              Assets.imagesCloseIcon,
              width: 30,
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                SizedBox(
                  width: constraints.maxWidth * .5,
                  height: 40,
                  child: CustomText(
                    'nickNamesList',
                    style: Styles.styleBold25(context).copyWith(
                      color: AppColors.blackColor,
                      shadows: [const Shadow(color: AppColors.blackColor, blurRadius: 0.3)],
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  color: AppColors.blackColor,
                  width: constraints.maxWidth * .6,
                  height: 2,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
