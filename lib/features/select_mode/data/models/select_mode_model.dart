import 'package:flutter/widgets.dart';
import 'package:the_spy/constants.dart';

class SelectModeModel {
  final String modeDescription, modeTitle;
  final String? image;
  final Color backGroundColor;
  final Mode mode;

  const SelectModeModel({
    required this.mode,
    required this.modeDescription,
    required this.modeTitle,
    this.image,
    required this.backGroundColor,
  });
}
