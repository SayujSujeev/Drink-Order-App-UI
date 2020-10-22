import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.7);
    Offset curvePoint1 = Offset(0, size.height * 0.78);
    Offset centerPoint = Offset(size.width * 0.075, size.height * 0.8);
    path.quadraticBezierTo(
        curvePoint1.dx, curvePoint1.dy, centerPoint.dx, centerPoint.dy);

    path.lineTo(size.width * 0.925, size.height);

    Offset curvePoint2 = Offset(size.width, size.height);
    Offset endPoint = Offset(size.width, size.height * 0.9);

    path.quadraticBezierTo(
        curvePoint2.dx, curvePoint2.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }

}