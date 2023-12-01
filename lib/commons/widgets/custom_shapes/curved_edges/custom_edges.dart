import 'package:flutter/material.dart';

class BCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;
    var path = Path();
    path.lineTo(0, h);

    final firstCurve = Offset(0, h - 20);
    final lastCurve = Offset(30, h - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurve = Offset(0, h - 20);
    final secondLastCurve = Offset(w - 30, h - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondLastCurve.dx, secondLastCurve.dy);

    final lastFirstCurve = Offset(w, h - 20);
    final lastSecondLastCurve = Offset(w, h);
    path.quadraticBezierTo(lastFirstCurve.dx, lastFirstCurve.dy,
        lastSecondLastCurve.dx, lastSecondLastCurve.dy);

    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
