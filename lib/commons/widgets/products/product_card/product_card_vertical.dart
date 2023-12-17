import 'package:b_store/commons/widgets/images/rounded_image.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/screens/product_detail/product_detail.dart';
import '../../../styles/shadow.dart';
import '../../container/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../text/brand_title_with_icon.dart';
import 'product_price_text.dart';
import 'product_tittle.dart';

class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool darkMode = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [BShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(BSizes.productImageRadius),
            color: !darkMode ? BColors.white : BColors.darkerGrey),
        child: Column(
          children: [
            //!  Thumbnail , Whishlist button , Discount tag
            BRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(BSizes.sm),
              backgroundColor: darkMode ? BColors.dark : BColors.light,
              child: Column(
                children: [
                  Stack(
                    children: [
                      const BRoundedIMage(
                        imageUrl: BImages.productImage1,
                        applyImageRadius: true,
                      ),
                      Positioned(
                        top: 12,
                        child: BRoundedContainer(
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
                      ),
                      Positioned(
                        right: 9,
                        top: 0,
                        child: BCircularIcon(
                          icon: Iconsax.heart5,
                          color: Colors.red,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: BSizes.spaceBtwItems / 2,
            ),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: BSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BProductTitleText(
                    smallSize: true,
                    title: 'Adidas : ! Dummy text',
                  ),
                  SizedBox(
                    height: BSizes.spaceBtwItems / 2,
                  ),
                  BBrandTitleWithVerifyIcon(title: 'Adidas'),
                ],
              ),
            ),
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: BSizes.sm),
                  child: ProductPrice(price: '100'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: BColors.dark,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(BSizes.cardRadiusMd),
                        topLeft: Radius.circular(BSizes.cardRadiusMd)),
                  ),
                  child: const SizedBox(
                    width: BSizes.iconLg * 1.2,
                    height: BSizes.iconLg * 1.2,
                    child: Icon(
                      Iconsax.add,
                      color: BColors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
