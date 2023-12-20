import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../commons/widgets/icons/circular_icon.dart';
import '../../../../../commons/widgets/space/spacer.dart';
import '../../../../../utils/constants/colors.dart';

class ItemsAddRemoveToCart extends StatelessWidget {
  const ItemsAddRemoveToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = BHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          onPressed: () {},
          color: isDarkMode ? BColors.white : BColors.black,
          backgroundColor: isDarkMode ? BColors.darkGrey : BColors.light,
        ),
        const BSpaceBtwItemsW(),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const BSpaceBtwItemsW(),
        BCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          onPressed: () {},
          backgroundColor: BColors.primary,
          color: BColors.white,
        ),
      ],
    );
  }
}
