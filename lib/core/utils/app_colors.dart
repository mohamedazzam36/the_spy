import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/typedefs.dart';

abstract class AppColors {
  static const Color primaryColor = Color(0xff004d48);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color yellowColor = Color(0xffD59921);
  static const Color coffeeColor = Color(0xffffffe8);
  static const Color purpleColor = Color(0xff474bd8);
  static const Color pinkColor = Color(0xffec2b9f);
  static const Color redColor = Color(0xffe50000);
  static const Color darkBLueColor = Color(0xff002068);
  static const Color lightPrimaryColor = Color.fromARGB(255, 68, 124, 125);

  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff002068),
      Color(0xff093b7c),
      Color(0xff10468f),
      Color(0xff2d54ba),
    ],
  );
  static const SoundSectionColors primarySoundColors = (
    sliderColor: Color(0xff3870ff),
    thumbColor: Color(0xff2952ba),
  );

  static const primaryNavBarColor = Color(0xff002068);
}
