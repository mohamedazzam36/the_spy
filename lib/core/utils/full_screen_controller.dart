import 'package:flutter/services.dart';

class FullScreenController {
  static void enable() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  static void disable() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
}
