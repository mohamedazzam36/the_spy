import 'package:flutter/material.dart';

class FadeAnimationRouter extends PageRouteBuilder {
  FadeAnimationRouter({required Widget page})
    : super(
        pageBuilder: (_, _, _) => page,
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
}
