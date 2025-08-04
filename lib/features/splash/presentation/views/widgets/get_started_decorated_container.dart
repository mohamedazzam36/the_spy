import 'package:flutter/material.dart';

class SplashDecoratedContainer extends StatelessWidget {
  const SplashDecoratedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(color: Colors.white.withAlpha(50)),
    );
  }
}
