import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //! Subtotal

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$230', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),

        //! Fee shipping
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$12', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),
        //! Taxe

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$230', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),

        //! Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.titleMedium),
            Text('\$12', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),
      ],
    );
  }
}
