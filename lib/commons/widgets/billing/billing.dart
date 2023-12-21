import 'package:b_store/commons/widgets/billing/widgets/billing_address_section.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:flutter/material.dart';

import '../container/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'widgets/billing_amount_section.dart';
import 'widgets/billing_payement_section.dart';

class Billing extends StatelessWidget {
  const Billing({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = BHelperFunctions.isDarkMode(context);

    return BRoundedContainer(
      showBorder: true,
      backgroundColor: isDarkMode ? BColors.dark : BColors.white,
      padding: const EdgeInsets.only(
          top: BSizes.sm, bottom: BSizes.sm, right: BSizes.sm, left: BSizes.md),
      child: const Column(children: [
        //! Pricing
        //!
        BillingAmountSection(),
        BSpaceBtwItemsH(),

        //! Divider
        Divider(),
        BSpaceBtwItemsH(),

        //!
        //!Payement methode
        BillingPayementSection(),
        Divider(),
        BSpaceBtwItemsH(),

        //! Address
        BillingaddressSection()
      ]),
    );
  }
}
