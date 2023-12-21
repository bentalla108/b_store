import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/commons/widgets/success_screen/success_screen.dart';
import 'package:b_store/navigation_menu.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../commons/widgets/appbar/appbar.dart';
import '../../../../commons/widgets/billing/billing.dart';
import '../../../../commons/widgets/products/coupon/coupon_code.dart';
import '../../../../utils/constants/sizes.dart';
import '../cart/widgets/cart_item.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppbar(
          title: Text(
            'Order Review',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: true),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.defaultSpace),
          child: Column(children: [
            // ! Items
            CartItems(
              showAddRemoveButton: false,
            ),
            BSpaceBtwItemsH(),

            //! Code Promo
            BPromoCoupon(),
            BSpaceBtwItemsH(),

            //! Billing Section
            Billing(),
            BSpaceBtwItemsH(),

            BSpaceBtwSectionH(),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SucessScreen(
                      image: BImages.successfulPaymentIcon,
                      title: 'Payement Success!',
                      subTitle: 'Your items will be shipping son',
                      onPressed: () =>
                          Get.offAll(() => const NavigationMenu())),
                ),
            child: const Text('Checkout \$2500')),
      ),
    );
  }
}
