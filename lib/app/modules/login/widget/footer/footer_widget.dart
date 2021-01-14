import 'package:flutter/material.dart';

class FooterWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = Color.fromRGBO(22, 160, 226, 1);
    path = Path();
    final double _xScaling = size.width / 371;
    final double _yScaling = size.height / 400;
    path.lineTo(375 * _xScaling,99 * _yScaling);
    path.cubicTo(375 * _xScaling,99 * _yScaling,0 * _xScaling,99 * _yScaling,0 * _xScaling,99 * _yScaling,);
    path.cubicTo(0 * _xScaling,99 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,129.545 * _xScaling,110.762 * _yScaling,252.273 * _xScaling,61.2624 * _yScaling,);
    path.cubicTo(375 * _xScaling,11.7624 * _yScaling,375 * _xScaling,99 * _yScaling,375 * _xScaling,99 * _yScaling,);
    path.cubicTo(375 * _xScaling,99 * _yScaling,375 * _xScaling,99 * _yScaling,375 * _xScaling,99 * _yScaling,);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
