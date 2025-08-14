import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/size_config.dart';
import 'package:the_spy/features/home/presentation/views/widgets/custom_carousel_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: width <= SizeConfig.mobileWidth ? 1.5 : 2.5,
                child: const CustomCarouselView(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
