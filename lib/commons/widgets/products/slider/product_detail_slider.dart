import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../appbar/appbar.dart';
import '../../custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';

class BProductDetailSlider extends StatelessWidget {
  const BProductDetailSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = BHelperFunctions.isDarkMode(context);

    return BCurvedEdgeWidget(
      child: Container(
        color: isDarkMode ? BColors.darkerGrey : BColors.light,
        child: Stack(
          children: [
            //! Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(BSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(BImages.productImage1))),
              ),
            ),

            //! Slider Image

            Positioned(
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: BSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  itemBuilder: (_, index) => BRoundedIMage(
                      border: Border.all(color: BColors.primary),
                      padding: const EdgeInsets.all(BSizes.sm),
                      backgroundColor:
                          isDarkMode ? BColors.dark : BColors.light,
                      heigth: 80,
                      imageUrl: BImages.productImage6),
                ),
              ),
            ),

            BAppbar(
              showBackArrow: true,
              actions: [
                BCircularIcon(
                  icon: Iconsax.heart5,
                  onPressed: () {},
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
