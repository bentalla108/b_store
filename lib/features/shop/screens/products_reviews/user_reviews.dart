import 'package:b_store/commons/widgets/container/rounded_container.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/features/shop/screens/products_reviews/widgets/rating_indicator.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewSection extends StatelessWidget {
  const UserReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = BHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(BImages.userProfileImage1),
                ),
                const BSpaceBtwItemsW(),
                Text(
                  'Diana Sarri',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        Row(
          children: [
            const BRatingIndicator(rating: 4.3),
            Text(
              ' 04-07-2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const BSpaceBtwItemsH(),
        const ReadMoreText(
          'This is a review for blue nike shoes may be blue nike tee-shirt a loot of those article is avalaible in the store ',
          trimLines: 1,
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: BColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: BColors.primary),
        ),

        const BSpaceBtwItemsH(),

        ///! Company review

        BRoundedContainer(
          backgroundColor: isDarkMode ? BColors.darkGrey : BColors.grey,
          padding: const EdgeInsets.all(BSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BSTore',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    ' 04-07-2023',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              const BSpaceBtwItemsH(),
              const ReadMoreText(
                'This is a review for blue nike shoes may be blue nike tee-shirt a loot of those article is avalaible in the store ',
                trimLines: 1,
                trimMode: TrimMode.Line,
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: BColors.primary),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: BColors.primary),
              ),
            ],
          ),
        ),

        const BSpaceBtwSectionH(),
      ],
    );
  }
}
