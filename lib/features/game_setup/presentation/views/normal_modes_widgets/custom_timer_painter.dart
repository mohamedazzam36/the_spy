import 'dart:math';

import 'package:flutter/material.dart';
import 'package:the_spy/core/utils/app_colors.dart';

class TimerPainter extends CustomPainter {
  final double progress;

  TimerPainter(this.progress, {super.repaint});

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.width / 2;

    final rect = Rect.fromCircle(center: center, radius: radius);

    const startAngle = -pi / 2;
    final sweepAngle = 2 * pi * progress;

    final mainStrokePaint = Paint()
      ..color = AppColors.coffeeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final neonStrokePaint = Paint()
      ..color = AppColors.redColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2.2);

    canvas.drawArc(rect, startAngle, sweepAngle, false, neonStrokePaint);
    canvas.drawArc(rect, startAngle, sweepAngle, false, mainStrokePaint);
  }

  @override
  bool shouldRepaint(covariant TimerPainter oldDelegate) => oldDelegate.progress != progress;
}
