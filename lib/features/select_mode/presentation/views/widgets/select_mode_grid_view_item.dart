import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/extensions/game_modes_extensions.dart';
import 'package:the_spy/core/utils/app_router.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/utils/enums.dart';
import 'package:the_spy/core/utils/service_locator.dart';
import 'package:the_spy/core/widgets/custom_responsive_text.dart';

class SelectModeGridViewItem extends StatefulWidget {
  const SelectModeGridViewItem({super.key, required this.currentMode});

  final GameModesEnum currentMode;

  @override
  State<SelectModeGridViewItem> createState() => _SelectModeGridViewItemState();
}

class _SelectModeGridViewItemState extends State<SelectModeGridViewItem> {
  bool isPressed = false;
  late ({List<Color> backGroundColors, String iconPath, String title}) modeInfo;

  @override
  void initState() {
    modeInfo = widget.currentMode.getModeInfo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isPressed = true),
      onTapUp: (_) {
        setState(() => isPressed = false);
        appServices.currentMode = widget.currentMode;
        context.push(
          AppRouter.kHomeView,
        );
      },
      onTapCancel: () => setState(() => isPressed = false),
      child: AnimatedContainer(
        transform: Matrix4.identity()..scale(isPressed ? 0.95 : 1.0),
        transformAlignment: Alignment.center,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,
        padding: const EdgeInsets.symmetric(vertical: 12),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          border: isPressed ? Border.all(color: modeInfo.backGroundColors[0], width: 2) : null,
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: modeInfo.backGroundColors,
            begin: Alignment.bottomRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                modeInfo.iconPath,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomResponsiveText(
                fit: BoxFit.scaleDown,
                text: modeInfo.title,
                style: Styles.extraLight16(
                  context,
                ).copyWith(fontSize: 24, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
