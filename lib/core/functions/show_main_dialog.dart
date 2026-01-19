import 'package:flutter/material.dart';

void showMainDialog(BuildContext context, Widget child, {required VoidCallback onCancel}) {
  showGeneralDialog(
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) => PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) onCancel();
      },
      child: Center(
        child: child,
      ),
    ),
  );
}

void showInGamePopUpDialog(BuildContext context, Widget child) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: '',
    pageBuilder: (context, animation, secondaryAnimation) => Center(
      child: child,
    ),
  );
}
