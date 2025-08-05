import 'package:flutter/material.dart';
import 'package:the_spy/features/home/presentation/views/widgets/custom_carousel_view.dart';
import 'package:the_spy/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    print(S.of(context).devicesList.split(', ')[2]);
    return const CustomCarouselView();
  }
}
