import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class BCirularContainer extends StatelessWidget {
  const BCirularContainer(
      {super.key,
      this.radius = 400,
      this.height = 400,
      this.width = 400,
      this.child,
      this.backgroundColor = BColors.textWhite,
      this.padding = 0});

  final double? height;
  final double? width;
  final double radius;
  final Color backgroundColor;
  final double padding;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
