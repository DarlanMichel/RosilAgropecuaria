import 'package:flutter/material.dart';

class HeaderWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = Color.fromRGBO(22, 160, 226, 1);
    path = Path();

    final double _xScaling = size.width / 371;
    final double _yScaling = size.height / 400;
    path.lineTo(0 * _xScaling,0 * _yScaling);
    path.cubicTo(0 * _xScaling,0 * _yScaling,375 * _xScaling,0 * _yScaling,375 * _xScaling,0 * _yScaling,);
    path.cubicTo(375 * _xScaling,0 * _yScaling,375 * _xScaling,98 * _yScaling,375 * _xScaling,98 * _yScaling,);
    path.cubicTo(375 * _xScaling,98 * _yScaling,245.455 * _xScaling,-11.6436 * _yScaling,122.727 * _xScaling,37.3564 * _yScaling,);
    path.cubicTo(0 * _xScaling,86.3564 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    // path.lineTo(0.0, size.height / 6);
    // path.cubicTo(size.width, size.height / 5, size.width * 0.94, size.height * 0.88,size.width, size.height);
    // path.cubicTo(size.width , size.height, size.width, size.height,size.width, size.height);
    // path.lineTo(size.width, 0.0);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}