import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/core/utils/size_config.dart';
import 'package:the_spy/features/home/data/models/category_item_model.dart';
import 'package:the_spy/features/home/presentation/views/widgets/carousel_view_item.dart';

class CustomCarouselView extends StatefulWidget {
  const CustomCarouselView({super.key});

  @override
  State<CustomCarouselView> createState() => _CustomCarouselViewState();
}

class _CustomCarouselViewState extends State<CustomCarouselView> {
  List<CategoryItemModel> categoriesList = [];
  CarouselController controller = CarouselController(initialItem: 4);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return CarouselView.weighted(
      onTap: (value) {
        appServices.currentCategoryNames = categoriesList[value].namesList;
        context.push(
          AppRouter.kPlayersView,
        );
      },
      controller: controller,
      padding: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      itemSnapping: true,
      scrollDirection: Axis.horizontal,
      flexWeights: width <= SizeConfig.mobileWidth ? [1, 2, 1] : [1, 1, 2, 1, 1],
      children: categoriesList.map(
        (e) {
          return CarouselViewItem(categoryItemModel: e);
        },
      ).toList(),
    );
  }
}
