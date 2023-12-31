import 'package:b_store/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commons/widgets/appbar/appbar.dart';
import '../../../../../commons/widgets/products/custom_cart/custom_cart_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class BHomeAppbar extends StatelessWidget {
  const BHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: BColors.grey),
          ),
          Text(
            BTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: BColors.white),
          ),
        ],
      ),
      actions: [
        BCartIconButton(
            cartCounterIon: '4',
            cartPressed: () => Get.to(() => const CartScreen()))
      ],
    );
  }
}
