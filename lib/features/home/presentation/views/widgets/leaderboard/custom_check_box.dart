import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key, this.onChanged, required this.isSelected});

  final void Function(bool?)? onChanged;
  final bool isSelected;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: const BorderSide(color: AppColors.blackColor),
      checkColor: AppColors.coffeeColor,
      activeColor: AppColors.blackColor,
      splashRadius: 0,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      value: widget.isSelected,
      onChanged: widget.onChanged,
    );
  }
}
