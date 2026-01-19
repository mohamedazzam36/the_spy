import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/enums/categories_enum.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home/home_list_view.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home/no_selected_category_widget.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home/selected_category_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  final List<CategoriesEnum> categories = const [
    CategoriesEnum.films,
    CategoriesEnum.anime,
    CategoriesEnum.cartoons,
    CategoriesEnum.videoGames,
    CategoriesEnum.tools,
    CategoriesEnum.cities,
    CategoriesEnum.devices,
    CategoriesEnum.food,
    CategoriesEnum.random,
    CategoriesEnum.animals,
    CategoriesEnum.cloths,
    CategoriesEnum.drinks,
    CategoriesEnum.jobs,
    CategoriesEnum.sports,
    CategoriesEnum.football,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current is CategoryChange,
      builder: (context, state) {
        int? currentCategoryIndex = context.homeCubit.currentCategoryIndex;
        return CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  currentCategoryIndex == null
                      ? const Expanded(child: NoSelectedCategoryWidget())
                      : const Expanded(child: SelectedCategoryWidget()),
                  // Expanded(
                  //   child: Align(
                  //     child: Lottie.asset(Assets.imagesJobsAnimation, width: 250),
                  //   ),
                  // ),
                  HomeListView(
                    categories: categories,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
