import 'package:b_store/features/shop/screens/cart/widgets/items_add_remove_to_cart.dart';
import 'package:flutter/material.dart';

import '../../../../../commons/widgets/products/product_card/product_price_text.dart';
import '../../../../../commons/widgets/space/spacer.dart';
import 'single_product_items.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    required this.showAddRemoveButton,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                const SingleProductItem(),
                if (showAddRemoveButton) const BSpaceBtwItemsH(),
                if (showAddRemoveButton)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [SizedBox(width: 70), ItemsAddRemoveToCart()],
                      ),
                      ProductPrice(price: '1500'),
                    ],
                  )
              ],
            ),
        separatorBuilder: (_, __) => const BSpaceBtwSectionH(),
        itemCount: 3);
  }
}
