import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class AboutAppHeader extends StatelessWidget {
  const AboutAppHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Image.asset(
              Assets.imagesAboutGameIcon,
              width: 20,
            ),
            CustomText(
              'aboutApp',
              style: Styles.styleBold14(
                context,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        const Divider(
          indent: 30,
          endIndent: 30,
          height: 20,
          color: Colors.grey,
          thickness: 0.3,
        ),
        Text(
          'aboutAppDiscription'.tr(),
          style: Styles.styleBold10(
            context,
          ).copyWith(fontSize: 10.5),
        ),
        const Divider(
          indent: 70,
          endIndent: 70,
          height: 20,
          color: Colors.grey,
          thickness: 0.3,
        ),
      ],
    );
  }
}
