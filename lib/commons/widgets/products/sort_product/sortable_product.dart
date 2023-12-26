import 'package:b_store/commons/widgets/layout/grid_layout.dart';
import 'package:b_store/commons/widgets/products/product_card/product_card_vertical.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BSortableProduct extends StatelessWidget {
  const BSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: (value) {}),
      const BSpaceBtwItemsH(),
      BGridLayout(
          itemCount: 10,
          itemBuilder: (context, index) => const BProductCardVertical())
    ]);
  }
}
