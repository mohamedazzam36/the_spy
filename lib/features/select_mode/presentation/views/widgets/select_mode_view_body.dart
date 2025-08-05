import 'package:flutter/material.dart';

class SelectModeViewBody extends StatelessWidget {
  const SelectModeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: true,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
              );
            },
          ),
        ),
      ],
    );
  }
}
