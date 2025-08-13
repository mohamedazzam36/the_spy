import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

class QuestionsRevealcard extends StatelessWidget {
  const QuestionsRevealcard({
    super.key,
    required this.askingPlayer,
    required this.askedPlayer,
  });

  final String askingPlayer, askedPlayer;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Row(
                children: [
                  FittedBox(
                    child: Text(
                      askingPlayer,
                      style: Styles.styleSemiBold35(
                        context,
                      ).copyWith(color: kBlackColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      right: 8,
                      left: 8,
                    ),
                    child: FittedBox(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'ask'.tr(),
                        style: Styles.styleSemiBold24(context).copyWith(color: kBlackColor),
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      askedPlayer,
                      style: Styles.styleSemiBold35(
                        context,
                      ).copyWith(color: kBlackColor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            FittedBox(
              child: Text(
                'askNotDirectly'.tr(),
                style: Styles.styleSemiBold35(
                  context,
                ).copyWith(color: kBlackColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
