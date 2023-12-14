import 'package:b_store/commons/widgets/container/primary_header_container.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../commons/widgets/container/search_container.dart';
import '../../../../commons/widgets/layout/grid_layout.dart';
import '../../../../commons/widgets/products/product_card/product_card_vertical.dart';
import '../../../../commons/widgets/space/spacer.dart';
import '../../../../commons/widgets/text/custom_headline_text.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/home_promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const BPrimaryHeaderContainer(
            child: Column(
              children: [
                // ! Appbar
                BHomeAppbar(),
                SizedBox(
                  height: BSizes.spaceBtwSections,
                ),

                // ! Searchbar
                BSearchContainer(
                  text: 'Search in store',
                ),
                SizedBox(
                  height: BSizes.spaceBtwSections,
                ),

                // ! Product categorie
                Padding(
                  padding: EdgeInsets.only(left: BSizes.defaultSpace),
                  child: Column(
                    children: [
                      BSectionHeadline(
                        title: "Popular Categories",
                        showActionButton: false,
                      ),

                      SizedBox(
                        height: BSizes.spaceBtwItems,
                      ),
                      // ! -- Home categories
                      BHomeCategories()
                    ],
                  ),
                ),
                BSpaceBtwSectionH(),
              ],
            ),
          ),

          // Body

          Padding(
            padding: const EdgeInsets.all(BSizes.defaultSpace),
            child: Column(
              children: [
                const BPromoSlider(
                  banner: [
                    BImages.promoBanner1,
                    BImages.promoBanner2,
                    BImages.promoBanner3,
                  ],
                ),

                const SizedBox(
                  height: BSizes.spaceBtwSections,
                ),

                //! -- Popular Products
                const BSectionHeadline(
                  title: "Popular Products",
                  showActionButton: true,
                ),

                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),

                BGridLayout(
                  itemBuilder: (_, index) => const BProductCardVertical(),
                  itemCount: 4,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
