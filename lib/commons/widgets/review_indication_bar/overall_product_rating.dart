import 'package:flutter/material.dart';

import 'reviews_indicator.dart';

class BOverallRatingProducts extends StatelessWidget {
  const BOverallRatingProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 3,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
      const Expanded(
        flex: 7,
        child: Column(
          children: [
            BRatingarIndicator(
              text: '1',
              value: 0.1,
            ),
            BRatingarIndicator(
              text: '4',
              value: 0.4,
            ),
            BRatingarIndicator(
              text: '4',
              value: 0.4,
            ),
            BRatingarIndicator(
              text: '4',
              value: 0.4,
            ),
            BRatingarIndicator(
              text: '5',
              value: 0.5,
            ),
          ],
        ),
      )
    ]);
  }
}
