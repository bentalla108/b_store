import 'package:b_store/commons/widgets/appbar/appbar.dart';
import 'package:b_store/commons/widgets/container/search_container.dart';
import 'package:b_store/commons/widgets/layout/grid_layout.dart';
import 'package:b_store/commons/widgets/products/custom_cart/custom_cart_button.dart';
import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../commons/widgets/appbar/tabbar.dart';
import '../../../../commons/widgets/brand_card/brand_card.dart';
import '../../../../commons/widgets/space/spacer.dart';
import '../../../../utils/constants/image_strings.dart';
import '../cart/cart.dart';
import 'widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool darkMode = BHelperFunctions.isDarkMode(context);
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: BAppbar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              BCartIconButton(
                cartPressed: () => Get.to(() => const CartScreen()),
                cartCounterIon: '3',
                iconColor: BColors.black,
              ),
            ],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) => [
                    SliverAppBar(
                        automaticallyImplyLeading: false,
                        floating: true,
                        pinned: true,
                        backgroundColor:
                            darkMode ? BColors.black : BColors.white,
                        expandedHeight: 440,
                        flexibleSpace: Padding(
                          padding: const EdgeInsets.all(BSizes.defaultSpace),
                          child: ListView(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              // ! Searchbar

                              const BSpaceBtwItemsH(),
                              const BSearchContainer(
                                text: 'Search in store,',
                                showBorder: true,
                                padding: EdgeInsets.zero,
                              ),
                              const BSpaceBtwSectionH(),

                              //! Features Breand

                              BSectionHeading(
                                title: 'Features Breand',
                                showActionButton: true,
                                onPressed: () {},
                              ),

                              const SizedBox(height: BSizes.spaceBtwItems / 2),

                              BGridLayout(
                                  itemCount: 4,
                                  mainAxisExtent: 80,
                                  itemBuilder: (_, index) {
                                    return const BBrandCard(
                                      showBorder: true,
                                      brandTitle: 'Nike',
                                      imageUrl: BImages.clothIcon,
                                    );
                                  })
                            ],
                          ),
                        ),

                        //!  -- Tabs
                        bottom: const BTabBar(tabs: [
                          Tab(child: Text('Sport')),
                          Tab(child: Text('Furniture')),
                          Tab(child: Text('Electornc')),
                          Tab(child: Text('Clothes')),
                          Tab(child: Text('Cosmetics'))
                        ]))
                  ],
              body: const TabBarView(children: [
                BCategoryTab(),
                BCategoryTab(),
                BCategoryTab(),
                BCategoryTab(),
                BCategoryTab()
              ])),
        ));
  }
}
