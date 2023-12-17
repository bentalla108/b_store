import 'package:b_store/commons/widgets/container/rounded_container.dart';
import 'package:b_store/commons/widgets/products/product_card/product_tittle.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../commons/widgets/choice_tip/choice_tip.dart';

class BProductAttribute extends StatelessWidget {
  const BProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = BHelperFunctions.isDarkMode(context);
    return Column(children: [
      //! --Selected Attribute - Pricing & Description
      BRoundedContainer(
        backgroundColor: isDarkMode ? BColors.darkGrey : BColors.grey,
        padding: const EdgeInsets.all(BSizes.md),
        child: Column(
          children: [
            //! Title , price & stock status
            Row(
              children: [
                const BSectionHeading(
                  title: 'Variation',
                  showActionButton: false,
                ),
                const BSpaceBtwItemsW(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const BProductTitleText(
                          title: 'Price',
                          smallSize: true,
                        ),
                        const BSpaceBtwItemsW(),
                        //! Actual Price
                        Text(
                          '\$25',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(decoration: TextDecoration.lineThrough),
                        ),
                        const BSpaceBtwItemsW(),

                        //! Sale Price

                        const Text(
                          '\$45',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const BProductTitleText(
                          title: 'Stock',
                          smallSize: true,
                        ),
                        const BSpaceBtwItemsW(),
                        Text(
                          'In Stock',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),

            const BProductTitleText(
              title:
                  'This is the description of the product  and it can go up to 4 Lines',
              maxLines: 4,
              smallSize: true,
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
      ////////////                       /////////////////////////

      const BSpaceBtwItemsH(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BSectionHeading(title: 'Colors ', showActionButton: false),
          const SizedBox(
            height: BSizes.spaceBtwItems / 2,
          ),
          Wrap(
            spacing: BSizes.sm,
            children: [
              BChoiceChip(
                onSelected: (value) {},
                selected: true,
                text: 'Yellow',
              ),
              BChoiceChip(
                onSelected: (value) {},
                selected: true,
                text: 'Blue',
              ),
              BChoiceChip(
                onSelected: (value) {},
                selected: false,
                text: 'Red',
              ),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BSectionHeading(title: 'Sizes', showActionButton: false),
          const SizedBox(height: BSizes.spaceBtwItems / 2),
          Wrap(
            spacing: BSizes.sm,
            children: [
              BChoiceChip(
                onSelected: (value) {},
                selected: true,
                text: 'EU 34',
              ),
              BChoiceChip(
                onSelected: (value) {},
                selected: false,
                text: 'EU 33',
              ),
              BChoiceChip(
                onSelected: (value) {},
                selected: false,
                text: 'EU 35',
              ),
            ],
          ),
        ],
      )
    ]);
  }
}
