import 'package:flutter/widgets.dart';

class SelectModeModel {
  final String modeDescription, modeTitle;
  final String? image;
  final Color backGroundColor;

  const SelectModeModel({
    required this.modeDescription,
    required this.modeTitle,
    this.image,
    required this.backGroundColor,
  });
}
