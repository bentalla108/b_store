import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../commons/widgets/products/slider/product_detail_slider.dart';
import '../../../../commons/widgets/text/custom_headline_text.dart';
import 'widgets/bottom_add_to_cart.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/products_attribute.dart';
import 'widgets/ratig_and_share_buttons.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddTocart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //! Product Image Slider

            const BProductDetailSlider(),

            //! Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: BSizes.defaultSpace,
                  left: BSizes.defaultSpace,
                  bottom: BSizes.defaultSpace),
              child: Column(
                children: [
                  //! Rating & Sharing
                  const BRatingAndShareButton(),

                  //! Price Title and brand

                  const BProductMetaData(),
                  //! Attribute
                  const BProductAttribute(),

                  //!Checkout Button
                  const BSpaceBtwSectionH(),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const BSpaceBtwSectionH(),

                  // ! Description

                  const BSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const BSpaceBtwItemsH(),
                  const ReadMoreText(
                    'This is a description for blue nike shoes may be blue nike tee-shirt a loot of those article is avalaible in the store ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  //! Reviews

                  const BSpaceBtwSectionH(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BSectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.arrow_right3,
                            size: 18,
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
