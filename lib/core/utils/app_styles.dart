import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/size_config.dart';

abstract class Styles {
  static TextStyle extraLight16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w200,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle stylesLight16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w300,
      color: AppColors.blackColor,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 16),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w600,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleSemiBold35(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 35),
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w600,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 24),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w600,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleSemiBold60(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 60),
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w600,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold50(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 50),
      color: AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold25(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 25),
      color: AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold32(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 32),
      color: AppColors.coffeeColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 14),
      color: AppColors.coffeeColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 18),
      color: AppColors.blackColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold13(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 13),
      color: AppColors.coffeeColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold10(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 10),
      color: AppColors.coffeeColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 12),
      color: AppColors.blackColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleBold40(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 40),
      color: AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 16),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Cairo',
    );
  }

  static TextStyle styleMedium24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, fontSize: 24),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Cairo',
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
