import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/widgets/custom_background_container.dart';
import 'package:the_spy/core/widgets/custom_curved_navigation_bar.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';

class MainAppViews extends StatelessWidget {
  const MainAppViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            // appBar: AppBar(
            //   backgroundColor: kPrimaryColor,
            //   title: CustomAppBar(
            //     title: context.homeCubit.appBarTitles[context.homeCubit.currentNavBarIndex],
            //     imagePath: Assets.imagesDetectiveSearchIcon,
            //   ),
            // ),
            backgroundColor: kPrimaryColor,
            bottomNavigationBar: const CustomCurvedNavigationBar(),
            body: switch (state) {
              HomeInitial() => CustomBackgroundContainer(
                child: context.homeCubit.views[context.homeCubit.currentNavBarIndex],
              ),
              // Align(
              //   alignment: Alignment.center,
              //   child: Image.asset(
              //     Assets.imagesWelcome,
              //   ),
              // ),
              HomeSuccess() => CustomBackgroundContainer(
                child: context.homeCubit.views[context.homeCubit.currentNavBarIndex],
              ),
            },
          );
        },
      ),
    );
  }
}
