import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class ResultHeaderWidget extends StatelessWidget {
  const ResultHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            'results'.tr(),
            textAlign: TextAlign.center,
            style: Styles.styleSemiBold60(context),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
