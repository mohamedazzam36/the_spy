import 'package:flutter/widgets.dart';

bool isRtl(BuildContext context) {
  return Directionality.of(context) == TextDirection.rtl;
}
