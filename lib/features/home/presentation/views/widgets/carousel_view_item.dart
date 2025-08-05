import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/features/home/data/models/category_item_model.dart';

class CarouselViewItem extends StatelessWidget {
  const CarouselViewItem({
    super.key,
    required this.categoryItemModel,
  });

  final CategoryItemModel categoryItemModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          categoryItemModel.image,
          fit: BoxFit.fill,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
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
