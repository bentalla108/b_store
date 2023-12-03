import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class BVerticalImageText extends StatelessWidget {
  const BVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = BColors.white,
    this.backGground,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backGground;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final bool dakrMode = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BSizes.spaceBtwItems),
        child: Column(
          children: [
            // !  Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(BSizes.sm),
              decoration: BoxDecoration(
                color:
                    backGground ?? (dakrMode ? BColors.black : BColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dakrMode ? BColors.light : BColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: BSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
