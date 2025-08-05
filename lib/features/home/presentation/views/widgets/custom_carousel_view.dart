import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/features/home/data/models/category_item_model.dart';
import 'package:the_spy/features/home/presentation/views/widgets/carousel_view_item.dart';
import 'package:the_spy/generated/l10n.dart';

class CustomCarouselView extends StatefulWidget {
  const CustomCarouselView({super.key});

  @override
  State<CustomCarouselView> createState() => _CustomCarouselViewState();
}

class _CustomCarouselViewState extends State<CustomCarouselView> {
  late List<CategoryItemModel> categoriesList;

  @override
  void initState() {
    super.initState();
    getCategoriesInfo();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: CarouselView.weighted(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        itemSnapping: true,
        scrollDirection: Axis.vertical,
        flexWeights: const [
          1,
        ],
        children: const [
          // CarouselViewItem(categoryItemModel: ,),
        ],
      ),
    );
  }

  void getCategoriesInfo() {
    categoriesList = [
      CategoryItemModel(
        titleName: S.of(context).animals,
        image: Assets.imagesAnimals,
        namesList: S.of(context).animalsList.split(', '),
      ),
    ];
  }
}
