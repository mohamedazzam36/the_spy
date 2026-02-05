import 'package:flutter/material.dart';

class NoAnimationRouter extends PageRouteBuilder {
  NoAnimationRouter({required Widget page})
    : super(
        pageBuilder: (_, _, _) => page,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      );
}
