import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/features/splash/presentation/views/widgets/get_started_view_body.dart';
import 'package:the_spy/generated/l10n.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).appBarTitle,
              style: AppStyles.styleMedium30(context),
            ),
            SvgPicture.asset(
              height: 60,
              width: 60,
              Assets.imagesDetectiveSearchIcon,
            ),
          ],
        ),
      ),
      body: const GetStartedViewBody(),
    );
  }
}
