import 'package:easy_localization/easy_localization.dart';
import 'package:the_spy/core/enums/nick_names_enum.dart';
import 'package:the_spy/core/utils/app_images.dart';

extension NickNamesInfo on NickNamesEnum {
  String get nickName {
    switch (this) {
      case NickNamesEnum.theSpy:
        return 'theSpy'.tr();
      case NickNamesEnum.theCharmer:
        return 'theCharmer'.tr();
      case NickNamesEnum.theSneaky:
        return 'theSneaky'.tr();
      case NickNamesEnum.theWeasel:
        return 'theWeasel'.tr();
      case NickNamesEnum.thePhantom:
        return 'thePhantom'.tr();
      case NickNamesEnum.theHustler:
        return 'theHustler'.tr();
      case NickNamesEnum.theRookie:
        return 'theRookie'.tr();
    }
  }

  String get logoPath {
    switch (this) {
      case NickNamesEnum.theSpy:
        return Assets.imagesTheSpyIcon;
      case NickNamesEnum.theCharmer:
        return Assets.imagesTheCharmerIcon;
      case NickNamesEnum.theSneaky:
        return Assets.imagesTheSneakyIcon;
      case NickNamesEnum.theWeasel:
        return Assets.imagesTheWeaselIcon;
      case NickNamesEnum.thePhantom:
        return Assets.imagesThePhantomIcon;
      case NickNamesEnum.theHustler:
        return Assets.imagesTheHustlerIcon;
      case NickNamesEnum.theRookie:
        return Assets.imagesTheRookieIcon;
    }
  }

  String get averagePoints {
    switch (this) {
      case NickNamesEnum.theSpy:
        return '1000 >';
      case NickNamesEnum.theCharmer:
        return "700 : 999";
      case NickNamesEnum.theSneaky:
        return '500 : 699';
      case NickNamesEnum.theWeasel:
        return '350 : 499';
      case NickNamesEnum.thePhantom:
        return '150: 349';
      case NickNamesEnum.theHustler:
        return '50 : 149';
      case NickNamesEnum.theRookie:
        return '0 : 49';
    }
  }
}
