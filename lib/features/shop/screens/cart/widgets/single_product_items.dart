import 'package:flutter/material.dart';

import '../../../../../commons/widgets/images/rounded_image.dart';
import '../../../../../commons/widgets/products/product_card/product_tittle.dart';
import '../../../../../commons/widgets/space/spacer.dart';
import '../../../../../commons/widgets/text/brand_title_with_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SingleProductItem extends StatelessWidget {
  const SingleProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BRoundedIMage(
          heigth: 60,
          width: 60,
          imageUrl: BImages.productImage1,
          padding: const EdgeInsets.all(BSizes.sm),
          backgroundColor: BHelperFunctions.isDarkMode(context)
              ? BColors.darkGrey
              : BColors.light,
        ),
        const BSpaceBtwItemsW(),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BBrandTitleWithVerifyIcon(title: 'Nike'),
              const Flexible(
                child: BProductTitleText(
                  title: 'Black Shoes',
                  maxLines: 1,
                ),
              ),

              //! Attribute !

              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'EU 45 ',
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
