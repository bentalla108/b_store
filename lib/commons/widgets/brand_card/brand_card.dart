import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../container/rounded_container.dart';
import '../images/circular_image.dart';
import '../text/brand_title_with_icon.dart';

class BBrandCard extends StatelessWidget {
  const BBrandCard({
    super.key,
    this.showBorder = false,
    this.onTap,
    required this.brandTitle,
    required this.imageUrl,
  });

  final bool showBorder;
  final void Function()? onTap;
  final String brandTitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BRoundedContainer(
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(BSizes.sm),
        showBorder: showBorder,
        child: Row(children: [
          //  ! Icon **********
          Flexible(
            child: BCircularImage(
              imageUrl: imageUrl,
            ),
          ),

          const SizedBox(
            width: BSizes.spaceBtwItems / 2,
          ),

          Expanded(
            // Flexible works also
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BBrandTitleWithVerifyIcon(
                    title: brandTitle, brandTextSizes: TextSizes.medium),
                Text(
                  '234 products ',
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
