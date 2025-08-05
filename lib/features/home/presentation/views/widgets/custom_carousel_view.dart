import 'package:flutter/material.dart';

class CustomCarouselView extends StatelessWidget {
  const CustomCarouselView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CarouselView.weighted(
      flexWeights: [1, 2, 1],
      children: [],
    );
  }
}
