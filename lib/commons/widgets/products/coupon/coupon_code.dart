import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../container/rounded_container.dart';

class BPromoCoupon extends StatelessWidget {
  const BPromoCoupon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = BHelperFunctions.isDarkMode(context);

    return BRoundedContainer(
      showBorder: true,
      backgroundColor: isDarkMode ? BColors.dark : BColors.white,
      padding: const EdgeInsets.only(
          top: BSizes.sm, bottom: BSizes.sm, right: BSizes.sm, left: BSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
                decoration: const InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'Have a promo code? Enter here',
            )),
          ),
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: isDarkMode
                          ? BColors.white.withOpacity(0.5)
                          : BColors.dark.withOpacity(0.5),
                      backgroundColor: BColors.grey.withOpacity(0.2),
                      side: BorderSide(color: BColors.grey.withOpacity(0.1))),
                  onPressed: () {},
                  child: const Text('Apply'))),
        ],
      ),
    );
  }
}
