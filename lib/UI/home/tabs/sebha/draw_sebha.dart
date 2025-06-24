import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamy_app/Utils/app_color.dart';

class DrawSebha extends CustomPainter {
  final List<bool> beadStates;

  DrawSebha({required this.beadStates});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 1.7);
    final radius = size.width * 0.45; // Adjust based on image layout
    final totalBeads = beadStates.length;
    final beadRadius = 18.0;

    for (int i = 0; i < totalBeads; i++) {
      final angle = 2 * pi * i / totalBeads;
      final beadOffset = Offset(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );

      final beadColor =
          beadStates[i] ? AppColor.whiteColor : Color.fromARGB(199, 233, 6, 6);

      final paint = Paint()
        ..color = beadColor
        ..style = PaintingStyle.fill;

      canvas.drawCircle(beadOffset, beadRadius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
