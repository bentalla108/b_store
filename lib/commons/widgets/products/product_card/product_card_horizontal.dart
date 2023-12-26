import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/screens/product_detail/product_detail.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../container/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';
import '../../text/brand_title_with_icon.dart';
import 'product_price_text.dart';
import 'product_tittle.dart';

class BProductCardHorizontal extends StatelessWidget {
  const BProductCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool darkMode = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(const ProductDetail()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(BSizes.productImageRadius),
            color: !darkMode ? BColors.white : BColors.softGrey),
        child: Row(
          children: [
            //!  Thumbnail , Whishlist button , Discount tag
            BRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(BSizes.sm),
              backgroundColor: darkMode ? BColors.dark : BColors.light,
              child: Stack(
                children: [
                  const SizedBox(
                    width: 120,
                    height: 120,
                    child: BRoundedIMage(
                      imageUrl: BImages.productImage1,
                      applyImageRadius: true,
                    ),
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
                    right: 0,
                    top: 0,
                    child: BCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 172,
              child: Column(
                children: [
                  // Details
                  Padding(
                    padding:
                        const EdgeInsets.only(top: BSizes.sm, left: BSizes.sm),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BProductTitleText(
                          smallSize: true,
                          title: 'Adidas : ! Dummy text',
                        ),
                        const SizedBox(
                          height: BSizes.spaceBtwItems / 2,
                        ),
                        const BBrandTitleWithVerifyIcon(title: 'NIke'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Flexible(child: ProductPrice(price: '100')),
                            Container(
                              decoration: const BoxDecoration(
                                color: BColors.dark,
                                borderRadius: BorderRadius.only(
                                    bottomRight:
                                        Radius.circular(BSizes.cardRadiusMd),
                                    topLeft:
                                        Radius.circular(BSizes.cardRadiusMd)),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}









          // const SizedBox(
            //   height: BSizes.spaceBtwItems / 2,
            // ),

   
            // const Spacer(),

