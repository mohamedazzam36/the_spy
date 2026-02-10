import 'package:flutter/widgets.dart';

typedef CategoryInfo = ({
  LinearGradient gradient,
  Color navBarColor,
  SoundSectionColors soundColors,
  String image,
  String titleName,
});

typedef SoundSectionColors = ({Color thumbColor, Color sliderColor});

typedef CategoryUiInfo = ({
  String enImage,
  String arImage,
  String description,
  String animationPath,
  List<String> highlightWords,
});
