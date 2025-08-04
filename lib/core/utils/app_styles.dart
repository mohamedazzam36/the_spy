import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_spy/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleMedium30(BuildContext context) {
    return GoogleFonts.changa(
      fontSize: getResponsiveText(context, fontSize: 30),
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleBold50(BuildContext context) {
    return GoogleFonts.changa(
      fontSize: getResponsiveText(context, fontSize: 50),
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
