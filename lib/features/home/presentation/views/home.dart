import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/widgets/custom_curved_navigation_bar.dart';
import 'package:the_spy/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: const CustomCurvedNavigationBar(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: CustomAppBar(
          title: 'theSpy'.tr(),
          imagePath: Assets.imagesDetectiveSearchIcon,
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
