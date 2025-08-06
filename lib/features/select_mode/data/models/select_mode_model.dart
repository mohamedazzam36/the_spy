import 'package:flutter/widgets.dart';
import 'package:the_spy/core/utils/enums.dart';

class SelectModeModel {
  final String modeDescription;
  final String? image;
  final Color backGroundColor;
  final Mode mode;

  const SelectModeModel({
    required this.mode,
    required this.modeDescription,
    this.image,
    required this.backGroundColor,
  });
}
