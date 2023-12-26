import 'package:b_store/commons/widgets/brand_card/brand_card.dart';
import 'package:b_store/commons/widgets/layout/grid_layout.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:b_store/features/shop/screens/brand/brand_product.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../commons/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class AllBrandscreen extends StatelessWidget {
  const AllBrandscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace),
        child: Column(
          children: [
            const BSectionHeading(
              title: 'Brand',
              showActionButton: false,
            ),
            const BSpaceBtwItemsH(),
            BGridLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder: (context, index) => BBrandCard(
                      showBorder: true,
                      brandTitle: 'Nike',
                      imageUrl: BImages.adidasLogo,
                      onTap: () => Get.to(() => const BrandProducts()),
                    ))
          ],
        ),
      )),
    );
  }
}
