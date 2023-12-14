import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../container/rounded_container.dart';
import 'brand_card.dart';

class BBrandshowCase extends StatelessWidget {
  const BBrandshowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return BRoundedContainer(
      showBorder: true,
      borderColor: BColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(BSizes.md),
      margin: const EdgeInsets.only(bottom: BSizes.spaceBtwItems),
      child: Column(children: [
        //! Brand with count products
        const BBrandCard(
          showBorder: true,
          brandTitle: 'Nike',
          imageUrl: BImages.clothIcon,
        ),
        //! Brand top 3 product image

        Row(
          children: images
              .map((image) => brandTopProdoctWidget(image, context))
              .toList(),
        )
      ]),
    );
  }
}

Widget brandTopProdoctWidget(String image, context) {
  return Expanded(
    child: BRoundedContainer(
        height: 100,
        margin: const EdgeInsets.only(right: BSizes.sm),
        padding: const EdgeInsets.all(BSizes.sm),
        backgroundColor: BHelperFunctions.isDarkMode(context)
            ? BColors.darkGrey
            : BColors.light,
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        )),
  );
}
