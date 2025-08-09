import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/utils/functions/access_cubits_helper.dart';
import 'package:the_spy/core/utils/size_config.dart';
import 'package:the_spy/features/home/data/models/category_item_model.dart';
import 'package:the_spy/features/home/presentation/views/widgets/carousel_view_item.dart';

class CustomCarouselView extends StatefulWidget {
  const CustomCarouselView({super.key});

  @override
  State<CustomCarouselView> createState() => _CustomCarouselViewState();
}

class _CustomCarouselViewState extends State<CustomCarouselView> {
  late List<CategoryItemModel> categoriesList;
  CarouselController controller = CarouselController(initialItem: 4);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    getCategoriesInfo();
    double width = MediaQuery.sizeOf(context).width;
    return CarouselView.weighted(
      onTap: (value) {
        accessAppCubit(context).currentCategoryNames = categoriesList[value].namesList;
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

  void getCategoriesInfo() {
    categoriesList = [
      CategoryItemModel(
        titleName: 'animals'.tr(),
        image: Assets.imagesAnimals,
        namesList: 'animalsList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'food'.tr(),
        image: Assets.imagesFood,
        namesList: 'foodList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'devices'.tr(),
        image: Assets.imagesDevices,
        namesList: 'devicesList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'cloths'.tr(),
        image: Assets.imagesCloths,
        namesList: 'clothsList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'videoGames'.tr(),
        image: Assets.imagesVideoGames,
        namesList: 'videoGamesList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'tools'.tr(),
        image: Assets.imagesTools,
        namesList: 'toolsList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'cities'.tr(),
        image: Assets.imagesCities,
        namesList: 'citiesList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'countries'.tr(),
        image: Assets.imagesCountries,
        namesList: 'countriesList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'movies'.tr(),
        image: Assets.imagesMovies,
        namesList: 'moviesList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'colors'.tr(),
        image: Assets.imagesColors,
        namesList: 'colorsList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'sports'.tr(),
        image: Assets.imagesSports,
        namesList: 'sportsList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'footballPlayers'.tr(),
        image: Assets.imagesFootballPlayers,
        namesList: 'footballPlayersList'.tr().split(', '),
      ),
      CategoryItemModel(
        titleName: 'everything'.tr(),
        image: Assets.imagesEverything,
        namesList: 'everythingList'.tr().split(', '),
      ),
    ];
  }
}
