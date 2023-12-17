import 'package:b_store/commons/widgets/images/circular_image.dart';
import 'package:b_store/commons/widgets/products/product_card/product_price_text.dart';
import 'package:b_store/commons/widgets/products/product_card/product_tittle.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/commons/widgets/text/brand_title_with_icon.dart';
import 'package:b_store/utils/constants/enums.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../commons/widgets/container/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class BProductMetaData extends StatelessWidget {
  const BProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDakarMode = BHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //! Price & Sale Price

        Row(
          children: [
            //! Sale Tag
            BRoundedContainer(
              radius: BSizes.sm,
              padding: const EdgeInsets.symmetric(
                  vertical: BSizes.xs, horizontal: BSizes.sm),
              backgroundColor: BColors.secondary.withOpacity(0.8),
              child: Text(
                '35%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: BColors.dark),
              ),
            ),

            const BSpaceBtwItemsW(),

            //! Price
            Text(
              '\$340',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const BSpaceBtwItemsW(),

            const ProductPrice(price: '400')
          ],
        ),

        const SizedBox(
          height: BSizes.spaceBtwItems / 1.5,
        ),

        //! Title

        const BProductTitleText(
          title: 'Green Nike Sport Jersey',
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems / 1.5,
        ),

        //! Stock & Status

        Row(
          children: [
            const BProductTitleText(
              title: 'Status',
            ),
            const BSpaceBtwItemsW(),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        const SizedBox(
          height: BSizes.spaceBtwItems / 1.5,
        ),

        //! Brand

        Row(
          children: [
            BCircularImage(
              padding: 12,
              imageUrl: BImages.nikeLogo,
              width: 40,
              height: 40,
              overlayColor: isDakarMode ? BColors.white : BColors.black,
            ),
            const BBrandTitleWithVerifyIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
