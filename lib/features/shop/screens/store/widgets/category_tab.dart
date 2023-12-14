import 'package:b_store/commons/widgets/layout/grid_layout.dart';
import 'package:b_store/commons/widgets/products/product_card/product_card_vertical.dart';
import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:flutter/material.dart';

import '../../../../../commons/widgets/brand_card/brand_showcases.dart';
import '../../../../../commons/widgets/space/spacer.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class BCategoryTab extends StatelessWidget {
  const BCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              //! Brand
              const BBrandshowCase(
                images: [
                  BImages.productImage31,
                  BImages.productImage52,
                  BImages.productImage31,
                  BImages.productImage52
                ],
              ),

              const BSpaceBtwItemsH(),
              BSectionHeadline(title: 'Your migh like', onPressed: () {}),
              const BSpaceBtwItemsH(),

              BGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const BProductCardVertical()),
              const BSpaceBtwSectionH(),
            ],
          ),
        ),
      ],
    );
  }
}
