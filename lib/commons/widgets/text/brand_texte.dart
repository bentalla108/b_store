import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.textColor,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });
  final String title;
  final int maxLine;
  final Color? textColor;
  final TextAlign textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        textAlign: textAlign,
        style: brandTextSizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
            : brandTextSizes == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
                : brandTextSizes == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: textColor)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: textColor));
  }
}
