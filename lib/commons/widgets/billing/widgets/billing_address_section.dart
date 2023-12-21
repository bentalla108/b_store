import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingaddressSection extends StatelessWidget {
  const BillingaddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),
        Text(
          'Jude Belligham',
          maxLines: 1,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: BColors.grey, size: 16),
            const SizedBox(width: BSizes.spaceBtwItems),
            Text('(+33) 03404040404',
                style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: BColors.grey, size: 16),
            const SizedBox(width: BSizes.spaceBtwItems),
            Expanded(
              child: Text('Marche collobane Dakar , Sa weitou Feug Diaye ya ',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),
      ],
    );
  }
}
