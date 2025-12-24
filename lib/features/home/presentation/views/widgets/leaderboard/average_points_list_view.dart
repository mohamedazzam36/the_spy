import 'package:flutter/widgets.dart';
import 'package:the_spy/core/enums/nick_names_enum.dart';
import 'package:the_spy/core/extensions/nick_names_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class AveragePointsListView extends StatelessWidget {
  const AveragePointsListView({
    super.key,
    required this.nickNames,
  });

  final List<NickNamesEnum> nickNames;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20,
          child: CustomText(
            'averagePoints',
            style: Styles.styleBold14(context).copyWith(
              color: AppColors.blackColor,
              fontSize: 12,
              shadows: [const Shadow(color: AppColors.blackColor, blurRadius: 0.3)],
            ),
          ),
        ),
        Column(
          spacing: 16,
          children: List.generate(
            nickNames.length,
            (index) => SizedBox(
              height: 20.8,
              child: CustomText(
                nickNames[index].averagePoints,
                style: Styles.styleBold14(context).copyWith(
                  shadows: [
                    Shadow(color: AppColors.blackColor.withAlpha(150), blurRadius: 0.3),
                  ],
                  fontSize: 14,
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
