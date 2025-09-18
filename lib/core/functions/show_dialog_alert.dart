import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

void playersDialogAlert(
  BuildContext context, {
  required int reqPlayers,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'errorOccured'.tr(),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
        ),
        content: Row(
          children: [
            Text(
              'playersAlertContent'.tr(),
              style: Styles.extraLight16(context),
            ),
            Text(
              ' $reqPlayers ',
              style: Styles.extraLight16(context),
            ),
            Text(
              'players'.tr(),
              style: Styles.extraLight16(context),
            ),
          ],
        ),
        actions: [
          TextButton(
            child: Text(
              'back'.tr(),
              style: Styles.extraLight16(context).copyWith(color: AppColors.blackColor),
            ),
            onPressed: () {
              context.pop();
            },
          ),
        ],
      );
    },
  );
}
