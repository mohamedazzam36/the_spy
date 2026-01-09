import 'package:flutter/material.dart';
import 'package:the_spy/core/extensions/app_helper_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/features/home/presentation/views/widgets/settings/times_list_view_item.dart';

class TimesListView extends StatelessWidget {
  const TimesListView({
    super.key,
    required this.timesList,
    required this.isArabicNumber,
    required this.seletedIndex,
    required this.onTap,
  });

  final List<int> timesList;
  final bool isArabicNumber;
  final int seletedIndex;
  final void Function(int newTimeIndex) onTap;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      interactive: true,
      trackVisibility: true,
      child: Container(
        height: 100,
        width: context.width * 0.55,
        constraints: const BoxConstraints(maxWidth: 400),
        decoration: BoxDecoration(
          color: AppColors.coffeeColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 0),
          itemBuilder: (context, index) {
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                onTap(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TimesListViewItem(
                  isSelected: index == seletedIndex,
                  showedTime: timesList[index],
                  isArabicNumber: isArabicNumber,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                height: 0,
              ),
            );
          },
          itemCount: timesList.length,
        ),
      ),
    );
  }
}
