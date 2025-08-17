import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/core/utils/enums.dart';

extension CategoriesInfo on CategoriesEnum {
  ({LinearGradient gradient, String image, String titleName}) get getCategoryItemInfo {
    switch (this) {
      case CategoriesEnum.animals:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff11210b),
              Color(0xffe8d37c),
            ],
          ),
          titleName: 'animals'.tr(),
          image: Assets.imagesAnimals,
        );
      case CategoriesEnum.food:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff77659a),
              Color(0xffff66c4),
            ],
          ),
          titleName: 'food'.tr(),
          image: Assets.imagesFood,
        );
      case CategoriesEnum.drinks:
        return (
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff151f28),
              Color(0xff8983a1),
            ],
          ),
          titleName: 'drinks'.tr(),
          image: Assets.imagesDrinks,
        );
      case CategoriesEnum.devices:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff101113),
              Color(0xff0097b2),
            ],
          ),
          titleName: 'devices'.tr(),
          image: Assets.imagesDevices,
        );
      case CategoriesEnum.cloths:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff352f33),
              Color(0xffff3131),
            ],
          ),
          titleName: 'cloths'.tr(),
          image: Assets.imagesClothes,
        );
      case CategoriesEnum.videoGames:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff004aad),
              Color(0xff5de0e6),
            ],
          ),
          titleName: 'videoGames'.tr(),
          image: Assets.imagesGames,
        );
      case CategoriesEnum.jobs:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xff00273d),
              Color(0xff468a9c),
              Color(0xff00273d),
            ],
          ),
          titleName: 'jobs'.tr(),
          image: Assets.imagesJobs,
        );
      case CategoriesEnum.tools:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff0c9ca1),
              Color(0xff8c52ff),
            ],
          ),
          titleName: 'tools'.tr(),
          image: Assets.imagesTools,
        );
      case CategoriesEnum.cities:
        return (
          gradient: const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xff201c1d),
              Color(0xff875d50),
            ],
          ),
          titleName: 'cities'.tr(),
          image: Assets.imagesCities,
        );
      case CategoriesEnum.films:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff994355),
              Color(0xff9a5362),
              Color(0xfff7b99c),
            ],
          ),
          titleName: 'films'.tr(),
          image: Assets.imagesFilms,
        );
      case CategoriesEnum.sports:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff7f30cb),
              Color(0xff01dcba),
            ],
          ),
          titleName: 'sports'.tr(),
          image: Assets.imagesSports,
        );
      case CategoriesEnum.football:
        return (
          gradient: const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xff8f1f40),
              Color(0xffaf4c0f),
            ],
          ),
          titleName: 'football'.tr(),
          image: Assets.imagesFootball,
        );
      case CategoriesEnum.cartoons:
        return (
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff450050),
              Color(0xffe753fe),
            ],
          ),
          titleName: 'cartoon'.tr(),
          image: Assets.imagesCartoons,
        );
      case CategoriesEnum.amongUs:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xffac7031),
              Color(0xffe7aa51),
              Color(0xff8d5a1b),
              Color(0xffffe499),
              Color(0xffe7aa51),
            ],
          ),
          titleName: 'amongUs'.tr(),
          image: Assets.imagesAmongUs,
        );
      case CategoriesEnum.random:
        return (
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff121521),
              Color(0xff38476b),
              Color(0xffb6192e),
              Color(0xffffc1ac),
            ],
          ),
          titleName: 'random'.tr(),
          image: Assets.imagesRandom,
        );
    }
  }

  get getCategoryInfo {
    switch (this) {
      case CategoriesEnum.animals:
        return (
          namesList: 'animalsList'.tr().split(', '),
        );
      case CategoriesEnum.food:
        return (
          namesList: 'foodList'.tr().split(', '),
        );
      case CategoriesEnum.drinks:
        return (
          namesList: 'drinksList'.tr().split(', '),
        );
      case CategoriesEnum.devices:
        return (
          namesList: 'devicesList'.tr().split(', '),
        );
      case CategoriesEnum.cloths:
        return (
          namesList: 'clothsList'.tr().split(', '),
        );
      case CategoriesEnum.videoGames:
        return (
          namesList: 'videoGamesList'.tr().split(', '),
        );
      case CategoriesEnum.jobs:
        return (
          namesList: 'jobsList'.tr().split(', '),
        );
      case CategoriesEnum.tools:
        return (
          namesList: 'toolsList'.tr().split(', '),
        );
      case CategoriesEnum.cities:
        return (
          namesList: 'citiesList'.tr().split(', '),
        );
      case CategoriesEnum.films:
        return (
          namesList: 'flimsList'.tr().split(', '),
        );
      case CategoriesEnum.sports:
        return (
          namesList: 'sportsList'.tr().split(', '),
        );
      case CategoriesEnum.football:
        return (
          namesList: 'footballList'.tr().split(', '),
        );
      case CategoriesEnum.cartoons:
        return (
          namesList: 'cartoonList'.tr().split(', '),
        );
      case CategoriesEnum.amongUs:
        return (
          namesList: 'randomList'.tr().split(', '),
        );
      case CategoriesEnum.random:
        return (
          namesList: 'randomList'.tr().split(', '),
        );
    }
  }
}
