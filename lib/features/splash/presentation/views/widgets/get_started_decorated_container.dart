import 'package:flutter/material.dart';

class GetStartedDecoratedContainer extends StatelessWidget {
  const GetStartedDecoratedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white.withAlpha(100), Colors.white.withAlpha(50)],
        ),
      ),
    );
  }
}
