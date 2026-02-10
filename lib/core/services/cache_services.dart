import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_spy/core/utils/app_images.dart';

class AppImageCache {
  AppImageCache._();

  static Future<void> precacheAssets(BuildContext context) async {
    final rasterImages = [
      Assets.imagesAboutGameIcon,
      Assets.imagesAmircaIcon,
      Assets.imagesAmongUs,
      Assets.imagesAnimals,
      Assets.imagesAnime,
      Assets.imagesAppDesignerIcon,
      Assets.imagesAppDeveloperIcon,
      Assets.imagesBlindDoubleIcon,
      Assets.imagesBlindIcon,
      Assets.imagesCartoons,
      Assets.imagesCategoryStarsGif,
      Assets.imagesChangeLanguageIcon,
      Assets.imagesCities,
      Assets.imagesClassicDoubleIcon,
      Assets.imagesClassicIcon,
      Assets.imagesCloseIcon,
      Assets.imagesClothes,
      Assets.imagesColoredStarsGif,
      Assets.imagesCzTeam,
      Assets.imagesDevelopingTeamIcon,
      Assets.imagesDevices,
      Assets.imagesDrinks,
      Assets.imagesDuoIcon,
      Assets.imagesEgyptIcon,
      Assets.imagesFilms,
      Assets.imagesFood,
      Assets.imagesFootball,
      Assets.imagesGames,
      Assets.imagesJobs,
      Assets.imagesLeaderboardHeaderGif,
      Assets.imagesLeaderboardHeaderImage,
      Assets.imagesLogo,
      Assets.imagesMainBackground,
      Assets.imagesNicknamesIcon,
      Assets.imagesNoBgLogo,
      Assets.imagesRandom,
      Assets.imagesSports,
      Assets.imagesStarIcon,
      Assets.imagesStarsGif,
      Assets.imagesTheCharmerIcon,
      Assets.imagesTheHustlerIcon,
      Assets.imagesThePhantomIcon,
      Assets.imagesTheRookieIcon,
      Assets.imagesTheSneakyIcon,
      Assets.imagesTheSpyIcon,
      Assets.imagesTheWeaselIcon,
      Assets.imagesTimeChangeIcon,
      Assets.imagesTools,
      Assets.imagesVolumeSettingsIcon,
    ];

    final svgAssets = [
      Assets.imagesAboutIcon,
      Assets.imagesAddPlayerIcon,
      Assets.imagesAndSvg,
      Assets.imagesAnimalsWordAr,
      Assets.imagesAnimalsWordEn,
      Assets.imagesAnimeWordAr,
      Assets.imagesAnimeWordEn,
      Assets.imagesBackIcon,
      Assets.imagesBlackPlayerIcon,
      Assets.imagesBluePlayerIcon,
      Assets.imagesCartoonWordAr,
      Assets.imagesCartoonWordEn,
      Assets.imagesCitiesWordAr,
      Assets.imagesCitiesWordEn,
      Assets.imagesClayPlayerIcon,
      Assets.imagesClothesWordAr,
      Assets.imagesClothesWordEn,
      Assets.imagesDeleteIcon,
      Assets.imagesDetectiveSearchIcon,
      Assets.imagesDevicesWordAr,
      Assets.imagesDevicesWordEn,
      Assets.imagesDrinksWordAr,
      Assets.imagesDrinksWordEn,
      Assets.imagesFilmsWordAr,
      Assets.imagesFilmsWordEn,
      Assets.imagesFoodWordAr,
      Assets.imagesFoodWordEn,
      Assets.imagesFootballWordAr,
      Assets.imagesFootballWordEn,
      Assets.imagesGamesWordAr,
      Assets.imagesGamesWordEn,
      Assets.imagesGreenPlayerIcon,
      Assets.imagesHomeWelcomeSvg,
      Assets.imagesJobsWordAr,
      Assets.imagesJobsWordEn,
      Assets.imagesMainLeaderboardIcon,
      Assets.imagesModesWelcomeSvg,
      Assets.imagesOrangePlayerIcon,
      Assets.imagesPinkPlayerIcon,
      Assets.imagesPurplePlayerIcon,
      Assets.imagesRandomWordAr,
      Assets.imagesRandomWordEn,
      Assets.imagesRedPlayerIcon,
      Assets.imagesSportsWordAr,
      Assets.imagesSportsWordEn,
      Assets.imagesToolsWordAr,
      Assets.imagesToolsWordEn,
    ];

    for (final image in rasterImages) {
      precacheImage(AssetImage(image), context);
    }

    for (final svg in svgAssets) {
      final loader = SvgAssetLoader(svg);
      vg.loadPicture(loader, context);
    }
  }
}
