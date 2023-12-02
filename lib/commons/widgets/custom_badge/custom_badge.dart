import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
    required this.text,
    this.width = 16,
    this.height = 16,
    this.right = 0,
    this.left,
    this.bottom,
    this.top,
    this.color = BColors.error,
    this.radius = 16,
  });

  final String text;
  final double width;
  final double height;
  final double? right;
  final double? left;
  final double? bottom;
  final double? top;
  final Color? color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius), color: color),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: BColors.white, fontSizeFactor: 0.8),
          ),
        ),
      ),
    );
  }
}
