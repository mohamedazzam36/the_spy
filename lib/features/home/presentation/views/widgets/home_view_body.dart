import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/extensions/categories_info_extensions.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/home/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  final List<CategoriesEnum> categories = const [
    CategoriesEnum.cartoons,
    CategoriesEnum.films,
    CategoriesEnum.videoGames,
    CategoriesEnum.tools,
    CategoriesEnum.cities,
    CategoriesEnum.devices,
    CategoriesEnum.food,
    CategoriesEnum.amongUs,
    CategoriesEnum.animals,
    CategoriesEnum.cloths,
    CategoriesEnum.drinks,
    CategoriesEnum.jobs,
    CategoriesEnum.sports,
    CategoriesEnum.football,
    CategoriesEnum.random,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current is CategoryChange,
      builder: (context, state) {
        int? currentCategoryIndex = context.homeCubit.currentCategoryIndex;
        return CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  currentCategoryIndex == null
                      ? const Text('Noooooooo')
                      : Text(
                          categories[currentCategoryIndex].getCategoryItemInfo.titleName,
                          style: Styles.styleSemiBold60(context),
                        ),
                  const Spacer(),
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
