import 'package:b_store/commons/widgets/container/rounded_container.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItemsView extends StatelessWidget {
  const OrderListItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, __) => const OrderListItems(),
        separatorBuilder: (_, __) => const BSpaceBtwItemsH(),
        itemCount: 10);
  }
}

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDakrMode = BHelperFunctions.isDarkMode(context);
    return BRoundedContainer(
      showBorder: true,
      backgroundColor: isDakrMode ? BColors.dark : BColors.light,
      child: Padding(
        padding: const EdgeInsets.all(BSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                // Order date & state
                Expanded(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Iconsax.ship,
                      ),
                      const SizedBox(
                        width: BSizes.spaceBtwItems / 2,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Processing',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(
                                      color: BColors.primary,
                                      fontWeightDelta: 1),
                            ),
                            const SizedBox(
                              width: BSizes.spaceBtwItems / 2,
                            ),
                            Text('23-2-3024',
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.arrow_right_34,
                          size: BSizes.iconSm,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: BSizes.spaceBtwItems / 2,
            ),
            Row(
              children: [
                // Order Tag & id
                Expanded(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Iconsax.tag,
                      ),
                      const SizedBox(
                        width: BSizes.spaceBtwItems / 2,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            const SizedBox(
                              width: BSizes.spaceBtwItems / 2,
                            ),
                            Text('[#34fd]',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Shipping Date
                Expanded(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Iconsax.calendar,
                      ),
                      const SizedBox(
                        width: BSizes.spaceBtwItems / 2,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Shipping date',
                                style: Theme.of(context).textTheme.labelMedium),
                            const SizedBox(
                              width: BSizes.spaceBtwItems / 2,
                            ),
                            Text('03-05-2024',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
