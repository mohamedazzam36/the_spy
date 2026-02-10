import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:the_spy/core/enums/categories_enum.dart';
import 'package:the_spy/core/utils/app_images.dart';
import 'package:the_spy/core/utils/typedefs.dart';

extension CategoriesInfo on CategoriesEnum {
  CategoryInfo get getCategoryItemInfo {
    switch (this) {
      case CategoriesEnum.animals:
        return (
          soundColors: (
            sliderColor: const Color(0xff519360),
            thumbColor: const Color(0xff497453),
          ),
          navBarColor: const Color(0xff012c29),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff188949),
              Color(0xff295b53),
              Color(0xff125659),
            ],
          ),
          titleName: 'animals'.tr(),
          image: Assets.imagesAnimals,
        );
      case CategoriesEnum.food:
        return (
          soundColors: (
            sliderColor: const Color(0xffff934e),
            thumbColor: const Color(0xffce6b37),
          ),
          navBarColor: const Color(0xff5a2601),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffc4916a),
              Color(0xffc46f29),
              Color(0xff5d151f),
              Color(0xff3a1e16),
            ],
          ),
          titleName: 'food'.tr(),
          image: Assets.imagesFood,
        );
      case CategoriesEnum.drinks:
        return (
          soundColors: (
            sliderColor: const Color(0xff814f93),
            thumbColor: const Color(0xff703f7a),
          ),
          navBarColor: const Color(0xff27252f),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff353241),
              Color(0xff332f44),
              Color(0xff3e3a53),
              Color(0xff564f70),
              Color(0xff473f6a),
            ],
          ),
          titleName: 'drinks'.tr(),
          image: Assets.imagesDrinks,
        );
      case CategoriesEnum.devices:
        return (
          soundColors: (
            sliderColor: const Color(0xff6ea9e6),
            thumbColor: const Color(0xff3e73aa),
          ),
          navBarColor: const Color(0xff082a49),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff5fbf97),
              Color(0xff4ca2b5),
              Color(0xff0b3969),
              Color(0xff000b21),
            ],
          ),
          titleName: 'devices'.tr(),
          image: Assets.imagesDevices,
        );
      case CategoriesEnum.cloths:
        return (
          soundColors: (
            sliderColor: const Color(0xff0787d8),
            thumbColor: const Color(0xff0268a8),
          ),
          navBarColor: const Color(0xff0c4769),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff013e6a),
              Color(0xff1694bd),
              Color(0xff013e6a),
            ],
          ),
          titleName: 'cloths'.tr(),
          image: Assets.imagesClothes,
        );
      case CategoriesEnum.games:
        return (
          soundColors: (
            sliderColor: const Color(0xff08a39f),
            thumbColor: const Color(0xff1f7c7b),
          ),
          navBarColor: const Color(0xff012c29),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff0097b2),
              Color(0xff101113),
            ],
          ),
          titleName: 'videoGames'.tr(),
          image: Assets.imagesGames,
        );
      case CategoriesEnum.jobs:
        return (
          soundColors: (
            sliderColor: const Color(0xff1ba6fd),
            thumbColor: const Color(0xff036eb1),
          ),
          navBarColor: const Color(0xff011e5f),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff2c96ad),
              Color(0xff2e5fb4),
              Color(0xff03102f),
            ],
          ),
          titleName: 'jobs'.tr(),
          image: Assets.imagesJobs,
        );
      case CategoriesEnum.tools:
        return (
          soundColors: (
            sliderColor: const Color(0xff2f9998),
            thumbColor: const Color(0xff187b7a),
          ),
          navBarColor: const Color(0xff0c3a36),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff004d48),
              Color(0xff004e49),
              Color(0xff1a6964),
              Color(0xff175c57),
            ],
          ),
          titleName: 'tools'.tr(),
          image: Assets.imagesTools,
        );
      case CategoriesEnum.cities:
        return (
          soundColors: (
            sliderColor: const Color(0xffa55d46),
            thumbColor: const Color(0xff7e4c3c),
          ),
          navBarColor: const Color(0xff2b1c1f),
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
          soundColors: (
            sliderColor: const Color(0xffcf8675),
            thumbColor: const Color(0xff966559),
          ),
          navBarColor: const Color(0xff6b341b),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff873f1e),
              Color(0xffd8a28d),
              Color(0xff873f1e),
              Color(0xffd8a28d),
              Color(0xff9e6449),
            ],
          ),
          titleName: 'films'.tr(),
          image: Assets.imagesFilms,
        );
      case CategoriesEnum.sports:
        return (
          soundColors: (
            sliderColor: const Color(0xff3870ff),
            thumbColor: const Color(0xff2952ba),
          ),
          navBarColor: const Color(0xff041a4d),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff171764),
              Color(0xff3432c7),
              Color(0xff000000),
            ],
          ),
          titleName: 'sports'.tr(),
          image: Assets.imagesSports,
        );
      case CategoriesEnum.football:
        return (
          soundColors: (
            sliderColor: const Color(0xfffd3a3a),
            thumbColor: const Color(0xffe50000),
          ),
          navBarColor: const Color(0xff390206),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff9e0e20),
              Color(0xffa81023),
              Color(0xffff3131),
              Color(0xff352f33),
            ],
          ),
          titleName: 'football'.tr(),
          image: Assets.imagesFootball,
        );
      case CategoriesEnum.cartoons:
        return (
          soundColors: (
            sliderColor: const Color(0xfffa53e5),
            thumbColor: const Color(0xffa94b9e),
          ),
          navBarColor: const Color(0xff450050),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff4d0059),
              Color(0xffd348e8),
              Color(0xff200724),
            ],
          ),
          titleName: 'cartoon'.tr(),
          image: Assets.imagesCartoons,
        );
      case CategoriesEnum.random:
        return (
          soundColors: (
            sliderColor: const Color(0xfffd3a3a),
            thumbColor: const Color(0xffe50000),
          ),
          navBarColor: const Color(0xff121521),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff121521),
              Color(0xff38476b),
              Color(0xffbf1d33),
              Color(0xff846358),
            ],
          ),
          titleName: 'random'.tr(),
          image: Assets.imagesRandom,
        );
      case CategoriesEnum.anime:
        return (
          soundColors: (
            sliderColor: const Color(0xff814f93),
            thumbColor: const Color(0xff703f7a),
          ),
          navBarColor: const Color(0xff0b1624),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff7a5a8f),
              Color(0xff4a3b74),
              Color(0xff233a5a),
              Color(0xff14243a),
            ],
          ),
          titleName: 'anime'.tr(),
          image: Assets.imagesAnime,
        );
    }
  }

  ({List<String> namesList}) get getCategoryInfo {
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
      case CategoriesEnum.games:
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
          namesList: 'filmsList'.tr().split(', '),
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
      case CategoriesEnum.random:
        return (
          namesList: 'randomList'.tr().split(', '),
        );
      case CategoriesEnum.anime:
        return (
          namesList: 'animeList'.tr().split(', '),
        );
    }
  }

  CategoryUiInfo categoryUiInfo() {
    return switch (this) {
      CategoriesEnum.animals => (
        arImage: Assets.imagesAnimalsWordAr,
        enImage: Assets.imagesAnimalsWordEn,
        description: 'animalsDescription'.tr(),
        highlightWords: [],
        animationPath: Assets.imagesAnimalsAnimation,
      ),
      CategoriesEnum.food => (
        arImage: Assets.imagesFoodWordAr,
        enImage: Assets.imagesFoodWordEn,
        description: 'foodDescription'.tr(),
        highlightWords: ['koshary'.tr(), 'pizza'.tr(), 'burger'.tr()],
        animationPath: Assets.imagesFoodAnimation,
      ),
      CategoriesEnum.drinks => (
        arImage: Assets.imagesDrinksWordAr,
        enImage: Assets.imagesDrinksWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesDrinksAnimation,
      ),
      CategoriesEnum.devices => (
        arImage: Assets.imagesDevicesWordAr,
        enImage: Assets.imagesDevicesWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesDevicesAnimation,
      ),
      CategoriesEnum.cloths => (
        arImage: Assets.imagesClothesWordAr,
        enImage: Assets.imagesClothesWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesClothesAnimation,
      ),
      CategoriesEnum.games => (
        arImage: Assets.imagesGamesWordAr,
        enImage: Assets.imagesGamesWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesGamesAnimation,
      ),
      CategoriesEnum.jobs => (
        arImage: Assets.imagesJobsWordAr,
        enImage: Assets.imagesJobsWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesJobsAnimation,
      ),
      CategoriesEnum.tools => (
        arImage: Assets.imagesToolsWordAr,
        enImage: Assets.imagesToolsWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesToolsAnimation,
      ),
      CategoriesEnum.cities => (
        arImage: Assets.imagesCitiesWordAr,
        enImage: Assets.imagesCitiesWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesCitiesAnimation,
      ),
      CategoriesEnum.films => (
        arImage: Assets.imagesFilmsWordAr,
        enImage: Assets.imagesFilmsWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesFilmsAnimation,
      ),
      CategoriesEnum.anime => (
        arImage: Assets.imagesAnimeWordAr,
        enImage: Assets.imagesAnimeWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesAnimeAnimation,
      ),
      CategoriesEnum.sports => (
        arImage: Assets.imagesSportsWordAr,
        enImage: Assets.imagesSportsWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesSportsAnimation,
      ),
      CategoriesEnum.football => (
        arImage: Assets.imagesFootballWordAr,
        enImage: Assets.imagesFootballWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesFootballAnimation,
      ),
      CategoriesEnum.cartoons => (
        arImage: Assets.imagesCartoonWordAr,
        enImage: Assets.imagesCartoonWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesCartoonAnimation,
      ),
      CategoriesEnum.random => (
        arImage: Assets.imagesRandomWordAr,
        enImage: Assets.imagesRandomWordEn,
        description: '',
        highlightWords: [],
        animationPath: Assets.imagesRandomAnimation,
      ),
    };
  }
}
