import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_spy/core/utils/app_colors.dart';
import 'package:the_spy/core/utils/app_styles.dart';

void showDialogAlert(
  BuildContext context, {
  required String title,
  required String content,
  required String actionText,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
        ),
        content: Text(
          content,
          style: Styles.extraLight16(context),
        ),
        actions: [
          TextButton(
            child: Text(
              actionText,
              style: Styles.extraLight16(context).copyWith(color: kBlackColor),
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
