import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';
import 'package:the_spy/core/widgets/custom_text.dart';

class ResultGridViewItem extends StatelessWidget {
  const ResultGridViewItem({
    super.key,
    required this.spyName,
    required this.votedWord,
    required this.isSpyTrue,
  });

  final String spyName, votedWord;
  final bool isSpyTrue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          CustomText(
            spyName,
            style: Styles.styleBold50(context),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomText(
            'select',
            style: Styles.styleSemiBold35(context),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomText(
            votedWord,
            style: Styles.styleSemiBold35(
              context,
            ).copyWith(color: isSpyTrue ? Colors.green : Colors.red),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
