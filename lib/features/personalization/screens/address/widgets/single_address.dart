import 'package:b_store/commons/widgets/container/rounded_container.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class SingleAdress extends StatelessWidget {
  const SingleAdress({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = BHelperFunctions.isDarkMode(context);

    return BRoundedContainer(
      padding: const EdgeInsets.all(BSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          isSelected ? BColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: isSelected
          ? Colors.transparent
          : isDarkMode
              ? BColors.darkGrey
              : BColors.grey,
      margin: const EdgeInsets.only(bottom: BSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              isSelected ? Iconsax.tick_circle5 : null,
              color: isSelected
                  ? isDarkMode
                      ? BColors.light
                      : BColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jude Belligham',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: BSizes.sm / 2,
              ),
              const Text(
                '(+33) 03404040404',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: BSizes.sm / 2,
              ),
              const Text(
                'Marche collobane Dakar , Sa weitou Feug Diaye ya ',
                maxLines: 1,
                softWrap: true,
              ),
              const SizedBox(
                height: BSizes.sm / 2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
