import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/categories_info_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home_list_view_item.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  final List<CategoriesEnum> categories = const [
    CategoriesEnum.food,
    CategoriesEnum.tools,
    CategoriesEnum.animals,
    CategoriesEnum.cloths,
    CategoriesEnum.devices,
    CategoriesEnum.cities,
    CategoriesEnum.amongUs,
    CategoriesEnum.cartoons,
    CategoriesEnum.jobs,
    CategoriesEnum.drinks,
    CategoriesEnum.sports,
    CategoriesEnum.films,
    CategoriesEnum.random,
    CategoriesEnum.videoGames,
    CategoriesEnum.football,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        color: kBlackColor.withAlpha(100),
        border: const Border.symmetric(horizontal: BorderSide(color: kWhiteColor, width: 1)),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HomeListViewItem(
            itemInfo: categories[index % categories.length].getCategoryItemInfo,
          );
        },
      ),
    );
  }
}
