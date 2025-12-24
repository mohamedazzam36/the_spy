import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class TimerChangeDropBox extends StatelessWidget {
  const TimerChangeDropBox({
    super.key,
    this.onChanged,
    required this.timesList,
    required this.showedValue,
  });

  final void Function(dynamic)? onChanged;
  final List<int> timesList;
  final int showedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      dropdownColor: AppColors.coffeeColor,
      iconEnabledColor: AppColors.coffeeColor,
      isExpanded: true,
      menuMaxHeight: 200,
      selectedItemBuilder: (context) {
        return timesList.map((time) {
          return CustomText(
            '$time',
            style: Styles.styleBold14(context).copyWith(
              color: AppColors.coffeeColor,
              fontSize: 20,
            ),
          );
        }).toList();
      },
      decoration: InputDecoration(
        hintStyle: Styles.styleBold14(context).copyWith(color: AppColors.coffeeColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.coffeeColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.coffeeColor),
        ),
      ),
      onChanged: onChanged,
      value: showedValue,
      items: timesList
          .map(
            (time) => DropdownMenuItem<int>(
              value: time,
              child: CustomText(
                time.toString(),
                style: Styles.styleBold14(context).copyWith(color: AppColors.blackColor),
              ),
            ),
          )
          .toList(),
    );
  }
}
