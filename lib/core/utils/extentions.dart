import 'package:flutter/material.dart';
import 'package:the_spy/constants.dart';
import 'package:the_spy/generated/l10n.dart';

extension ModesName on Mode {
  String getModeName(BuildContext context) {
    switch (this) {
      case Mode.normal:
        return S.of(context).normalModeTitle;
      case Mode.blind:
        return S.of(context).blindModeTitle;
    }
  }
}
