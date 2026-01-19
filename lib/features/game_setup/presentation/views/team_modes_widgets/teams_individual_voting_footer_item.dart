import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class TeamsIndividualVotingFooterItem extends StatelessWidget {
  const TeamsIndividualVotingFooterItem({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
    required this.color,
  });

  final String buttonTitle;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              buttonTitle,
              style: Styles.styleBold40(context),
            ),
          ),
        ),
      ),
    );
  }
}
