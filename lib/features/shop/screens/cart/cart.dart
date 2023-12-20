import 'package:b_store/commons/widgets/appbar/appbar.dart';
import 'package:b_store/commons/widgets/products/product_card/product_price_text.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widgets/cart_items.dart';
import 'widgets/items_add_remove_to_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppbar(
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, index) => const Column(
                  children: [
                    BCardItem(),
                    BSpaceBtwItemsH(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 70),
                            ItemsAddRemoveToCart(),
                          ],
                        ),
                        ProductPrice(price: '1500'),
                      ],
                    )
                  ],
                ),
            separatorBuilder: (_, __) => const BSpaceBtwSectionH(),
            itemCount: 10),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Checkout \$2500')),
      ),
    );
  }
}
