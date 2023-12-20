import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class BRatingIndicator extends StatelessWidget {
  final double rating;

  const BRatingIndicator({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        unratedColor: BColors.grey,
        itemSize: 20,
        itemBuilder: (_, __) => const Icon(
              Iconsax.star1,
              color: BColors.primary,
            ));
  }
}
