import 'package:b_store/commons/widgets/container/rounded_container.dart';
import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';

class BillingPayementSection extends StatelessWidget {
  const BillingPayementSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = BHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        BSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2),
        Row(
          children: [
            BRoundedContainer(
              height: 35,
              width: 60,
              backgroundColor: isDarkMode ? BColors.light : BColors.white,
              padding: const EdgeInsets.all(BSizes.sm),
              child: const Image(
                image: AssetImage(BImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: BSizes.spaceBtwItems / 2),
            Text(
              'Paypal',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}
