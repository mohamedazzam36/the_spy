import 'package:flutter/widgets.dart';
import 'package:the_spy/core/enums/nick_names_enum.dart';
import 'package:the_spy/core/extensions/nick_names_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class NicknamesListView extends StatelessWidget {
  const NicknamesListView({
    super.key,
    required this.nickNames,
  });

  final List<NickNamesEnum> nickNames;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 18,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20,
          child: CustomText(
            'alias',
            style: Styles.styleBold14(context).copyWith(
              color: AppColors.blackColor,
              fontSize: 12,
              shadows: [const Shadow(color: AppColors.blackColor, blurRadius: 0.3)],
            ),
          ),
        ),
        Column(
          spacing: 17,
          children: List.generate(
            nickNames.length,
            (index) => SizedBox(
              height: 20,
              child: CustomText(
                nickNames[index].nickName,
                style: Styles.styleBold14(context).copyWith(
                  shadows: [
                    Shadow(color: AppColors.blackColor.withAlpha(150), blurRadius: 5),
                  ],
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
