import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primaryColor = Color(0xff3A6162);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color yellowColor = Color(0xffD59921);
  static const Color coffeeColor = Color(0xffffffe8);
  static const Color lightPrimaryColor = Color.fromARGB(255, 68, 124, 125);

  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    colors: [
      Color(0xff384e58),
      Color(0xff345a64),
      Color(0xff2f686f),
      Color(0xff2d626d),
    ],
  );
}
