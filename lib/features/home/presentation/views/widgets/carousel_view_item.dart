import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/size_config.dart';
import 'package:the_spy/features/home/data/models/category_item_model.dart';

class CarouselViewItem extends StatelessWidget {
  const CarouselViewItem({
    super.key,
    required this.categoryItemModel,
  });

  final CategoryItemModel categoryItemModel;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Stack(
      fit: StackFit.expand,
      children: [
        FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(
            categoryItemModel.image,
            cacheWidth: width <= SizeConfig.mobileWidth
                ? (0.5 * width).toInt()
                : (0.333 * width).toInt(),
            cacheHeight: width <= SizeConfig.mobileWidth
                ? (width / 1.5).toInt()
                : (width / 2.5).toInt(),

            fit: BoxFit.cover,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              if (wasSynchronouslyLoaded) return child;
              return AnimatedOpacity(
                opacity: frame == null ? 0 : 1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
                child: child,
              );
            },
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: const SizedBox(),
        ),
        Center(
          child: FittedBox(
            child: Text(
              categoryItemModel.titleName,
              style: Styles.styleSemiBold60(context),
            ),
          ),
        ),
      ],
    );
  }
}
