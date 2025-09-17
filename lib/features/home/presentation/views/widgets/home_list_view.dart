import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/extensions/categories_info_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/features/home/presentation/views/widgets/colored_stars_home_list_view_item.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home_list_view_item.dart';

class HomeListView extends StatefulWidget {
  const HomeListView({super.key, required this.categories});
  final List<CategoriesEnum> categories;
  @override
  State<HomeListView> createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  late ScrollController _controller;

  @override
  void initState() {
    double screenWidth =
        PlatformDispatcher.instance.views.first.physicalSize.width /
        PlatformDispatcher.instance.views.first.devicePixelRatio;

    int targetIndex = 7;
    double itemWidth = 127.6;
    double offset = (itemWidth * targetIndex) - screenWidth / 2 + itemWidth / 2;

    _controller = ScrollController(initialScrollOffset: offset);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        physics: const BouncingScrollPhysics(),
        itemCount: widget.categories.length,
        controller: _controller,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.only(right: 8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return widget.categories[index] == CategoriesEnum.amongUs ||
                  widget.categories[index] == CategoriesEnum.random
              ? ColoredStarsHomeListViewItem(
                  onTap: () {
                    appServices.currentCategoryNames =
                        widget.categories[index].getCategoryInfo.namesList;
                    context.homeCubit.currentGradient =
                        widget.categories[index].getCategoryItemInfo.gradient;
                    context.homeCubit.changeCategoryIndex(index);
                  },
                  isActive: context.homeCubit.currentCategoryIndex == index,
                  itemInfo: widget.categories[index].getCategoryItemInfo,
                )
              : HomeListViewItem(
                  onTap: () {
                    appServices.currentCategoryNames =
                        widget.categories[index].getCategoryInfo.namesList;
                    context.homeCubit.currentGradient =
                        widget.categories[index].getCategoryItemInfo.gradient;
                    context.homeCubit.changeCategoryIndex(index);
                  },
                  isActive: context.homeCubit.currentCategoryIndex == index,
                  itemInfo: widget.categories[index].getCategoryItemInfo,
                );
        },
      ),
    );
  }
}
