import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/assets.dart';
import 'package:the_spy/features/splash/presentation/views/widgets/get_started_decorated_container.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kPrimaryColor,
            Colors.deepPurple,
            Colors.deepPurple[300]!,
            const Color.fromARGB(255, 243, 205, 225),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        image: const DecorationImage(
          image: AssetImage(Assets.imagesNoBgLogo),
          opacity: 0.6,
          fit: BoxFit.fill,
        ),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SplashDecoratedContainer()],
        ),
      ),
    );
  }
}
