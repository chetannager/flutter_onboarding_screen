import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/constants.dart';

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(718, 0);
    path_0.lineTo(718, 278.84);
    path_0.cubicTo(698.23, 287.44, 678.1, 295.43, 657.14, 300.66);
    path_0.cubicTo(647.26, 303.03, 637.2, 305.01, 626.98, 304.58);
    path_0.cubicTo(617.84, 304.99, 608.14, 303.15, 601.02, 297.05);
    path_0.cubicTo(593.63, 290.69, 590.64, 280.53, 591.27, 271.03);
    path_0.cubicTo(590.39, 250.33, 599.34, 231.17, 604.84, 211.67);
    path_0.cubicTo(608.74, 197.12, 611.13, 182.08, 611.39, 167);
    path_0.cubicTo(610.76, 149.5, 607.52, 131.79, 599.66, 116.01);
    path_0.cubicTo(592.12, 100.39, 580.2, 87.04, 565.96, 77.21);
    path_0.cubicTo(543.17, 61.49, 515.34, 54.68, 488, 53.16);
    path_0.cubicTo(479.38, 52.24, 470.62, 52.25, 462.01, 53.25);
    path_0.cubicTo(432.47, 54.8, 403.37, 61.13, 375.13, 69.73);
    path_0.cubicTo(332.67, 82.75, 292.14, 101.37, 253.12, 122.43);
    path_0.cubicTo(213.19, 143.77, 170.58, 161.95, 125.27, 167.34);
    path_0.cubicTo(116.53, 167.98, 107.75, 167.68, 99, 167.77);
    path_0.cubicTo(80.21, 168.24, 61.53, 163.53, 44.48, 155.83);
    path_0.cubicTo(28.89, 148.69, 14.98, 138.2, 3.16, 125.84);
    path_0.cubicTo(2.02, 124.61, 0.96, 123.32, 0, 121.96);
    path_0.lineTo(0, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = kPrimaryColor;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
