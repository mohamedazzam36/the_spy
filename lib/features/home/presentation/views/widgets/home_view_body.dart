import 'package:flutter/material.dart';
import 'package:the_spy/features/home/presentation/views/widgets/home_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Spacer(),
              HomeListView(),
            ],
          ),
        ),
      ],
    );
  }
}
