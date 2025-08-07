import 'package:flutter/material.dart';

void showDialogAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('عنوان التنبيه'),
        content: const Text('محتوى الرسالة أو التنبيه'),
        actions: [
          TextButton(
            child: const Text('رجوع'),
            onPressed: () {
              Navigator.of(context).pop(); // تقفل الديلوج
            },
          ),
        ],
      );
    },
  );
}
