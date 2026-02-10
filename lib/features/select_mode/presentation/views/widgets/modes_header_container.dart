import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class ModesHeaderContainer extends StatelessWidget {
  const ModesHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.blueAccent, blurRadius: 4, offset: Offset(0, 2)),
            ],
            gradient: AppColors.primaryGradient,
            borderRadius: BorderRadius.circular(24),
          ),

          child: CustomText(
            'selectMode',
            style: Styles.styleBold25(
              context,
            ).copyWith(color: AppColors.whiteColor, fontWeight: FontWeight.w900),
          ),
        ),
        Positioned.fill(
          child: RepaintBoundary(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(24),
              child: Image.asset(
                Assets.imagesStarsGif,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
