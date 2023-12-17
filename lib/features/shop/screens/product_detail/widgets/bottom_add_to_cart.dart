import 'package:b_store/commons/widgets/icons/circular_icon.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddTocart extends StatelessWidget {
  const BottomAddTocart({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = BHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: BSizes.defaultSpace, vertical: BSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: isDarkMode ? BColors.darkerGrey : BColors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(BSizes.cardRadiusLg),
              topRight: Radius.circular(BSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              BCircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                onPressed: () {},
                backgroundColor: BColors.darkGrey,
                color: BColors.white,
              ),
              const BSpaceBtwItemsW(),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const BSpaceBtwItemsW(),
              BCircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                onPressed: () {},
                backgroundColor: BColors.black,
                color: BColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(BSizes.md),
                backgroundColor: BColors.black,
                side: const BorderSide(color: BColors.black)),
            child: const Text('Add To cart'),
          )
        ],
      ),
    );
  }
}
