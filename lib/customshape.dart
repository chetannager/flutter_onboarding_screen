import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/constants.dart';

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.8153216);
    path_0.cubicTo(
        size.width * 0.9724652,
        size.height * 0.8404678,
        size.width * 0.9444290,
        size.height * 0.8638304,
        size.width * 0.9152368,
        size.height * 0.8791228);
    path_0.cubicTo(
        size.width * 0.9014763,
        size.height * 0.8860526,
        size.width * 0.8874652,
        size.height * 0.8918421,
        size.width * 0.8732312,
        size.height * 0.8905848);
    path_0.cubicTo(
        size.width * 0.8605014,
        size.height * 0.8917836,
        size.width * 0.8469916,
        size.height * 0.8864035,
        size.width * 0.8370752,
        size.height * 0.8685673);
    path_0.cubicTo(
        size.width * 0.8267827,
        size.height * 0.8499708,
        size.width * 0.8226184,
        size.height * 0.8202632,
        size.width * 0.8234958,
        size.height * 0.7924854);
    path_0.cubicTo(
        size.width * 0.8222702,
        size.height * 0.7319591,
        size.width * 0.8347354,
        size.height * 0.6759357,
        size.width * 0.8423955,
        size.height * 0.6189181);
    path_0.cubicTo(
        size.width * 0.8478273,
        size.height * 0.5763743,
        size.width * 0.8511560,
        size.height * 0.5323977,
        size.width * 0.8515181,
        size.height * 0.4883041);
    path_0.cubicTo(
        size.width * 0.8506407,
        size.height * 0.4371345,
        size.width * 0.8461281,
        size.height * 0.3853509,
        size.width * 0.8351811,
        size.height * 0.3392105);
    path_0.cubicTo(
        size.width * 0.8246797,
        size.height * 0.2935380,
        size.width * 0.8080780,
        size.height * 0.2545029,
        size.width * 0.7882451,
        size.height * 0.2257602);
    path_0.cubicTo(
        size.width * 0.7565042,
        size.height * 0.1797953,
        size.width * 0.7177437,
        size.height * 0.1598830,
        size.width * 0.6796657,
        size.height * 0.1554386);
    path_0.cubicTo(
        size.width * 0.6676602,
        size.height * 0.1527485,
        size.width * 0.6554596,
        size.height * 0.1527778,
        size.width * 0.6434680,
        size.height * 0.1557018);
    path_0.cubicTo(
        size.width * 0.6023259,
        size.height * 0.1602339,
        size.width * 0.5617967,
        size.height * 0.1787427,
        size.width * 0.5224652,
        size.height * 0.2038889);
    path_0.cubicTo(
        size.width * 0.4633287,
        size.height * 0.2419591,
        size.width * 0.4068802,
        size.height * 0.2964035,
        size.width * 0.3525348,
        size.height * 0.3579825);
    path_0.cubicTo(
        size.width * 0.2969220,
        size.height * 0.4203801,
        size.width * 0.2375766,
        size.height * 0.4735380,
        size.width * 0.1744708,
        size.height * 0.4892982);
    path_0.cubicTo(
        size.width * 0.1622981,
        size.height * 0.4911696,
        size.width * 0.1500696,
        size.height * 0.4902924,
        size.width * 0.1378830,
        size.height * 0.4905556);
    path_0.cubicTo(
        size.width * 0.1117131,
        size.height * 0.4919298,
        size.width * 0.08569638,
        size.height * 0.4781579,
        size.width * 0.06194986,
        size.height * 0.4556433);
    path_0.cubicTo(
        size.width * 0.04023677,
        size.height * 0.4347661,
        size.width * 0.02086351,
        size.height * 0.4040936,
        size.width * 0.004401114,
        size.height * 0.3679532);
    path_0.cubicTo(
        size.width * 0.002813370,
        size.height * 0.3643567,
        size.width * 0.001337047,
        size.height * 0.3605848,
        0,
        size.height * 0.3566082);
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
