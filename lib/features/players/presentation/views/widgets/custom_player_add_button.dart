import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_spy/core/utils/app_images.dart';

class CustomPlayerAddButton extends StatefulWidget {
  const CustomPlayerAddButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  State<CustomPlayerAddButton> createState() => _CustomPlayerAddButtonState();
}

class _CustomPlayerAddButtonState extends State<CustomPlayerAddButton> {
  bool isAinmationCompleted = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      icon: TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: isAinmationCompleted ? 1.0 : .3,
          end: isAinmationCompleted ? .3 : 1.0,
        ),
        onEnd: () => setState(() {
          isAinmationCompleted = !isAinmationCompleted;
        }),
        builder: (context, value, child) => Opacity(
          opacity: value,
          child: child,
        ),
        duration: const Duration(milliseconds: 1500),
        child: SvgPicture.asset(
          Assets.imagesAddPlayerIcon,
          width: 40,
        ),
      ),
    );
  }
}
