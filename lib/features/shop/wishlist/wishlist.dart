import 'package:b_store/commons/widgets/appbar/appbar.dart';
import 'package:b_store/commons/widgets/layout/grid_layout.dart';
import 'package:b_store/commons/widgets/products/product_card/product_card_vertical.dart';
import 'package:b_store/features/shop/screens/home/home.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../commons/widgets/icons/circular_icon.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppbar(
        title: Text(
          'Wishlist ',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          BCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(() => const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(BSizes.defaultSpace),
        child: Column(
          children: [
            BGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const BProductCardVertical())
          ],
        ),
      ),
    );
  }
}
