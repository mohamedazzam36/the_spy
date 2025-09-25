import 'package:flutter/widgets.dart';
import 'package:the_spy/core/enums/nick_names_enum.dart';
import 'package:the_spy/core/extensions/nick_names_extensions.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class LogosListView extends StatelessWidget {
  const LogosListView({
    super.key,
    required this.nickNames,
  });

  final List<NickNamesEnum> nickNames;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 16,
      children: [
        SizedBox(
          height: 20,
          child: CustomText(
            'logo',
            style: Styles.styleBold14(context).copyWith(
              color: AppColors.blackColor,
              fontSize: 12,
              shadows: [const Shadow(color: AppColors.blackColor, blurRadius: 0.3)],
            ),
          ),
        ),
        Column(
          spacing: 10,
          children: List.generate(
            nickNames.length,
            (index) => SizedBox(
              width: 27,
              child: Image.asset(
                nickNames[index].logoPath,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
