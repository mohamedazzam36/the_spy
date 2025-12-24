import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primaryColor = Color(0xff004d48);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color yellowColor = Color(0xffD59921);
  static const Color coffeeColor = Color(0xffffffe8);
  static const Color lightPrimaryColor = Color.fromARGB(255, 68, 124, 125);

  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff004d48),
      Color(0xff004e49),
      Color(0xff1a6964),
      Color(0xff175c57),
    ],
  );
}
