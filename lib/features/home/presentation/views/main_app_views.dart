import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/utils/extentions.dart';
import 'package:the_spy/core/widgets/custom_curved_navigation_bar.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/custom_app_bar.dart';

class MainAppViews extends StatelessWidget {
  const MainAppViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              title: CustomAppBar(
                title: context.homeCubit.appBarTitles[context.homeCubit.currentNavBarIndex],
                imagePath: Assets.imagesDetectiveSearchIcon,
              ),
            ),
            backgroundColor: kPrimaryColor,
            bottomNavigationBar: const CustomCurvedNavigationBar(),
            body: context.homeCubit.views[context.homeCubit.currentNavBarIndex](),
          );
        },
      ),
    );
  }
}
