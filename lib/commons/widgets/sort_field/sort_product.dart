import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BSortProduct extends StatelessWidget {
  const BSortProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        items: [
          'Name',
          'Higher Price',
          'Lower Price',
          'Sale',
          'Newest',
          'Popularity'
        ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
        onChanged: (value) {});
  }
}
