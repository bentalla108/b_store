import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import 'brand_texte.dart';

class BBrandTitleWithVerifyIcon extends StatelessWidget {
  const BBrandTitleWithVerifyIcon(
      {super.key,
      required this.title,
      this.maxLine = 1,
      this.textColor,
      this.iconColor = BColors.primary,
      this.icon = Iconsax.verify5,
      this.brandTextSizes = TextSizes.small});

  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final IconData icon;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            maxLine: maxLine,
            textColor: textColor,
            brandTextSizes: brandTextSizes,
          ),
        ),
        const SizedBox(width: BSizes.xs),
        Icon(icon, color: iconColor, size: BSizes.iconXs),
      ],
    );
  }
}
