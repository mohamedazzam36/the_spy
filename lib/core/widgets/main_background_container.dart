import 'package:flutter/widgets.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_images.dart';

class MainBackgroundContainer extends StatelessWidget {
  const MainBackgroundContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.only(bottom: 24),
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        gradient: context.homeCubit.currentGradient,
        image: const DecorationImage(
          image: AssetImage(Assets.imagesMainBackground),
          opacity: 0.35,
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
