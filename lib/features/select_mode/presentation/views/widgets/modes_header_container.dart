import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/widgets/custom_background_container.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';

class ModesHeaderContainer extends StatelessWidget {
  const ModesHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomBackgroundContainer(
          boxShadow: const [
            BoxShadow(color: kyellowColor, blurRadius: 4, offset: Offset(0, 2)),
          ],
          borderRadius: BorderRadius.circular(24),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          child: CustomResponsiveText(
            text: 'selectMode'.tr(),
            style: Styles.styleBold25(
              context,
            ).copyWith(color: kWhiteColor, fontWeight: FontWeight.w900),
          ),
        ),
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(24),
            child: Image.asset(
              Assets.imagesStarsGif,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
