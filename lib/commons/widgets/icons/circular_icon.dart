import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class BIconContainer extends StatelessWidget {
  const BIconContainer({
    super.key,
    this.backgroundColor,
    this.color,
    required this.icon,
    this.height,
    this.width,
    required this.onPressed,
    this.size = BSizes.md,
  });

  final Color? backgroundColor;
  final Color? color;
  final IconData icon;
  final double? height, width, size;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final bool dakrMode = BHelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor ??
              (dakrMode
                  ? BColors.black.withOpacity(0.9)
                  : BColors.white.withOpacity(0.9)),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
