import 'package:b_store/commons/widgets/appbar/appbar.dart';
import 'package:b_store/commons/widgets/images/rounded_image.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../commons/widgets/products/product_card/product_card_horizontal.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        title: Text('Sport Shirt'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              const BRoundedIMage(
                width: double.infinity,
                imageUrl: BImages.promoBanner1,
                applyImageRadius: true,
              ),
              const BSpaceBtwSectionH(),
              Column(
                children: [
                  BSectionHeading(
                    title: 'Sport Shirt',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          const BProductCardHorizontal(),
                      separatorBuilder: (context, index) =>
                          const BSpaceBtwItemsW(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
