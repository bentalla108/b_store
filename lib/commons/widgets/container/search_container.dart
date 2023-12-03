import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class BSearchContainer extends StatelessWidget {
  const BSearchContainer({
    super.key,
    this.colors,
    this.borderColors,
    this.icon = Iconsax.search_normal,
    required this.text,
    this.onTap,
    this.iconColor = BColors.darkGrey,
  });

  final Color? colors;
  final Color? borderColors;
  final IconData? icon;
  final String text;
  final Color iconColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: BSizes.defaultSpace),
        child: Container(
          width: BDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(BSizes.md),
          decoration: BoxDecoration(
            color: colors ?? (darkMode ? BColors.dark : BColors.light),
            border: Border.all(
              color: borderColors ?? (darkMode ? BColors.dark : BColors.light),
            ),
            borderRadius: BorderRadius.circular(
              BSizes.cardRadiusMd,
            ),
          ),
          child: Row(
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(
                width: BSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
