import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/utils/size_config.dart';
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
  CarouselController controller = CarouselController(initialItem: 4);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getCategoriesInfo();
    double width = MediaQuery.sizeOf(context).width;
    return CarouselView.weighted(
      controller: controller,
      padding: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      itemSnapping: true,
      scrollDirection: Axis.horizontal,
      flexWeights: width <= SizeConfig.mobileWidth
          ? [1, 2, 1]
          : [1, 1, 2, 1, 1],
      children: categoriesList.map(
        (e) {
          return CarouselViewItem(categoryItemModel: e);
        },
      ).toList(),
    );
  }

  void getCategoriesInfo() {
    categoriesList = [
      CategoryItemModel(
        titleName: S.of(context).animals,
        image: Assets.imagesAnimals,
        namesList: S.of(context).animalsList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).food,
        image: Assets.imagesFood,
        namesList: S.of(context).foodList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).devices,
        image: Assets.imagesDevices,
        namesList: S.of(context).devicesList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).cloths,
        image: Assets.imagesCloths,
        namesList: S.of(context).clothsList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).videoGames,
        image: Assets.imagesVideoGames,
        namesList: S.of(context).videoGamesList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).tools,
        image: Assets.imagesTools,
        namesList: S.of(context).toolsList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).cities,
        image: Assets.imagesCities,
        namesList: S.of(context).citiesList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).countries,
        image: Assets.imagesCountries,
        namesList: S.of(context).countriesList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).movies,
        image: Assets.imagesMovies,
        namesList: S.of(context).moviesList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).colors,
        image: Assets.imagesColors,
        namesList: S.of(context).colorsList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).sports,
        image: Assets.imagesSports,
        namesList: S.of(context).sportsList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).footballPlayers,
        image: Assets.imagesFootballPlayers,
        namesList: S.of(context).footballPlayersList.split(', '),
      ),
      CategoryItemModel(
        titleName: S.of(context).everything,
        image: Assets.imagesEverything,
        namesList: S.of(context).everythingList.split(', '),
      ),
    ];
  }
}
