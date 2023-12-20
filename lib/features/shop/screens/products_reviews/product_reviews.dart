import 'package:b_store/commons/widgets/appbar/appbar.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/features/shop/screens/products_reviews/user_reviews.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../commons/widgets/review_indication_bar/overall_product_rating.dart';
import 'widgets/rating_indicator.dart';

class ProductsReviews extends StatelessWidget {
  const ProductsReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        title: Text('Product Review'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings & Reviews are verified and are from people who use the same type of device that you ..'),
              const BSpaceBtwItemsH(),

              //! Overall rating Products
              const BOverallRatingProducts(),

              //! Stars rating indicators
              const BRatingIndicator(rating: 3),
              Text("12,345", style: Theme.of(context).textTheme.bodySmall),
              const BSpaceBtwSectionH(),
              const UserReviewSection(),
              const UserReviewSection(),
              const UserReviewSection(),
            ],
          ),
        ),
      ),
    );
  }
}
