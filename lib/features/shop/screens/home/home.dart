import 'package:b_store/commons/widgets/container/primary_header_container.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../commons/widgets/container/search_container.dart';
import '../../../../commons/widgets/text/custom_headline_text.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          BPrimaryHeaderContainer(
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
                      ), //

                      SizedBox(
                        height: BSizes.spaceBtwItems,
                      ),
                      // ! -- Home categories

                      BHomeCategories()

                      // !
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
