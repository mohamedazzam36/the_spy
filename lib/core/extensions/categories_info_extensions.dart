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
            sliderColor: const Color(0xffd8ffd0),
            thumbColor: const Color(0xff7cce6b),
          ),
          navBarColor: const Color(0xff1a3111),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff234018),
              Color(0xff496d3c),
              Color(0xff496d3c),
              Color(0xff295214),
            ],
          ),
          titleName: 'animals'.tr(),
          image: Assets.imagesAnimals,
        );
      case CategoriesEnum.food:
        return (
          soundColors: (
            sliderColor: const Color(0xffe753fe),
            thumbColor: const Color(0xff450050),
          ),
          navBarColor: const Color(0xff681236),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff681236),
              Color(0xff6b003d),
              Color(0xff913a5e),
              Color(0xffdd4383),
            ],
          ),
          titleName: 'food'.tr(),
          image: Assets.imagesFood,
        );
      case CategoriesEnum.drinks:
        return (
          soundColors: (
            sliderColor: const Color(0xffc58e7f),
            thumbColor: const Color(0xff875d50),
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
            sliderColor: const Color(0xffd8ffd0),
            thumbColor: const Color(0xff7cce6b),
          ),
          navBarColor: const Color(0xff003741),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff00484d),
              Color(0xff0d6172),
              Color(0xff15778c),
            ],
          ),
          titleName: 'devices'.tr(),
          image: Assets.imagesDevices,
        );
      case CategoriesEnum.cloths:
        return (
          soundColors: (
            sliderColor: const Color(0xffff3131),
            thumbColor: const Color(0xffa81023),
          ),
          navBarColor: const Color(0xff390206),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff710715),
              Color(0xff790816),
              Color(0xffab0f22),
              Color(0xffbc1c1c),
              Color(0xff352f33),
            ],
          ),
          titleName: 'cloths'.tr(),
          image: Assets.imagesClothes,
        );
      case CategoriesEnum.videoGames:
        return (
          soundColors: (
            sliderColor: const Color(0xffb2fbff),
            thumbColor: const Color(0xff6a8aff),
          ),
          navBarColor: const Color(0xff013e6a),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff013e6a),
              Color(0xff03538d),
              Color(0xff2e7eb5),
              Color(0xff067da4),
              // Color(0xff01186a),
            ],
          ),
          titleName: 'videoGames'.tr(),
          image: Assets.imagesGames,
        );
      case CategoriesEnum.jobs:
        return (
          soundColors: (
            sliderColor: const Color(0xffb2fbff),
            thumbColor: const Color(0xff6a8aff),
          ),
          navBarColor: const Color(0xff002032),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
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
          soundColors: (
            sliderColor: const Color(0xffd8ffd0),
            thumbColor: const Color(0xff7cce6b),
          ),
          navBarColor: const Color(0xff013430),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff013430),
              Color(0xff045b54),
              Color(0xff1f615d),
              Color(0xff239892),
              Color(0xff2a8f8b),
            ],
          ),
          titleName: 'tools'.tr(),
          image: Assets.imagesTools,
        );
      case CategoriesEnum.cities:
        return (
          soundColors: (
            sliderColor: const Color(0xffc58e7f),
            thumbColor: const Color(0xff875d50),
          ),
          navBarColor: const Color(0xff201c1d),
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
            sliderColor: const Color(0xffc58e7f),
            thumbColor: const Color(0xff875d50),
          ),
          navBarColor: const Color(0xff49212a),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff994355),
              Color(0xff9a5362),
              Color(0xffa38678),
            ],
          ),
          titleName: 'films'.tr(),
          image: Assets.imagesFilms,
        );
      case CategoriesEnum.sports:
        return (
          soundColors: (
            sliderColor: const Color(0xffc58e7f),
            thumbColor: const Color(0xff875d50),
          ),
          navBarColor: const Color(0xff50230e),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff893b17),
              Color(0xff963e15),
              Color(0xffbd6943),
            ],
          ),
          titleName: 'sports'.tr(),
          image: Assets.imagesSports,
        );
      case CategoriesEnum.football:
        return (
          soundColors: (
            sliderColor: const Color(0xffb2fbff),
            thumbColor: const Color(0xff6a8aff),
          ),
          navBarColor: const Color(0xff002068),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff002068),
              Color(0xff093b7c),
              Color(0xff10468f),
              Color(0xff2d54ba),
              Color(0xff4871dc),
            ],
          ),
          titleName: 'football'.tr(),
          image: Assets.imagesFootball,
        );
      case CategoriesEnum.cartoons:
        return (
          soundColors: (
            sliderColor: const Color(0xffe753fe),
            thumbColor: const Color(0xff450050),
          ),
          navBarColor: const Color(0xff450050),
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
      case CategoriesEnum.random:
        return (
          soundColors: (
            sliderColor: const Color(0xffff3131),
            thumbColor: const Color(0xffa81023),
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
            sliderColor: const Color(0xffb2fbff),
            thumbColor: const Color(0xff6a8aff),
          ),
          navBarColor: const Color(0xff272f42),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff313c53),
              Color(0xff355480),
              Color(0xff4f7ab6),
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
}
