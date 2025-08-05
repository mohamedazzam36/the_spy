import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/widgets/custom_curved_navigation_bar.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:the_spy/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: const CustomCurvedNavigationBar(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).appBarTitle,
              style: Styles.styleSemiBold35(context),
            ),
            SvgPicture.asset(
              Assets.imagesDetectiveSearchIcon,
              height: 70,
              width: 70,
            ),
          ],
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
