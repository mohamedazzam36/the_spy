import 'package:flutter/material.dart';
import 'package:the_spy/features/home/presentation/views/widgets/carousel_view_item.dart';

class CustomCarouselView extends StatelessWidget {
  const CustomCarouselView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: CarouselView.weighted(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        itemSnapping: true,
        scrollDirection: Axis.vertical,
        flexWeights: const [
          1,
        ],
        children: const [
          // CarouselViewItem(categoryItemModel: ,),
        ],
      ),
    );
  }
}
