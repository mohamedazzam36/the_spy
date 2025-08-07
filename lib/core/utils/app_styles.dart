import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/size_config.dart';

abstract class Styles {
  static TextStyle styleSemiBold35(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 35),
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle extraLight16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle styleSemiBold60(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 60),
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 24),
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold50(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 50),
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold25(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 25),
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }
}

double getResponsiveText(BuildContext context, {required double fontSize}) {
  double responsiveText = getScaleFactor(context) * fontSize;
  return responsiveText.clamp(fontSize * .8, fontSize * 1.2);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width <= SizeConfig.mobileWidth) {
    return width / 400;
  } else if (width <= SizeConfig.tabletWidth) {
    return width / 800;
  } else {
    return width / 1200;
  }
}
