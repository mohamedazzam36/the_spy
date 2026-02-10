import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/app_services/app_services.dart';
import 'package:the_spy/core/enums/categories_enum.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/extensions/categories_info_extensions.dart';
import 'package:the_spy/core/extensions/main_game_modes_extensions.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/widgets/main_app_structure.dart';
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
    CategoriesEnum.games,
    CategoriesEnum.cities,
    CategoriesEnum.devices,
    CategoriesEnum.food,
    CategoriesEnum.random,
    CategoriesEnum.animals,
    CategoriesEnum.cloths,
    CategoriesEnum.drinks,
    CategoriesEnum.jobs,
    CategoriesEnum.tools,
    CategoriesEnum.sports,
    CategoriesEnum.football,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current is CategoryChange,
      builder: (context, state) {
        int? currentCategoryIndex = context.homeCubit.currentCategoryIndex;
        return MainAppStructure(
          appBarActions: [SvgPicture.asset(Assets.imagesAboutIcon, width: 42)],
          appBarTitle: AppServices.currentMainMode.getModeInfo.title,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              fillOverscroll: false,
              child: Column(
                children: [
                  currentCategoryIndex == null
                      ? const Expanded(child: NoSelectedCategoryWidget())
                      : Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 24),
                            child: SelectedCategoryWidget(
                              categoryUiInfo: AppServices.currentCategory.categoryUiInfo(),
                            ),
                          ),
                        ),
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
