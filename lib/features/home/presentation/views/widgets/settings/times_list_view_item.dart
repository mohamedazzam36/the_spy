import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class TimesListViewItem extends StatelessWidget {
  const TimesListViewItem({
    super.key,
    required this.isSelected,
    required this.showedTime,
    required this.isArabicNumber,
  });

  final bool isSelected, isArabicNumber;
  final int showedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.black.withAlpha(100) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            isArabicNumber ? showedTime.toArabicNumbers : showedTime.toString(),
            style: Styles.styleBold14(context).copyWith(color: Colors.black),
          ),
          CustomText(
            getArabicSecWord(showedTime),
            style: Styles.styleBold14(context).copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }

  String getArabicSecWord(int time) {
    if (isArabicNumber) {
      if (time <= 10 && time >= 3) {
        return 'seconds';
      } else {
        return 'second';
      }
    } else {
      return 'seconds';
    }
  }
}
