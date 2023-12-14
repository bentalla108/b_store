import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class BCircularImage extends StatelessWidget {
  const BCircularImage({
    super.key,
    required this.imageUrl,
    this.width = 56,
    this.height = 56,
    this.isNetworkImage = false,
    this.padding = BSizes.md,
    this.fit = BoxFit.cover,
    this.overlayColor,
    this.backgroundColor,
  });
  final String imageUrl;
  final double width, height;
  final double padding;
  final Color? overlayColor, backgroundColor;
  final bool isNetworkImage;

  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final bool darkMode = BHelperFunctions.isDarkMode(context);

    return Container(
      padding: EdgeInsets.all(padding),
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor ?? (darkMode ? BColors.black : BColors.white)),
      child: Center(
        child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            color: overlayColor),
      ),
    );
  }
}
