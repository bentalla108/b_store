import 'package:b_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/device/device_utility.dart';

class BRatingarIndicator extends StatelessWidget {
  final String text;

  final double value;

  const BRatingarIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: BDeviceUtils.getScreenWidth(context) * 0.8, // Size Barre
            child: LinearProgressIndicator(
              minHeight: 10,
              backgroundColor: BColors.grey,
              borderRadius: BorderRadius.circular(7),
              value: value,
              color: Colors.blue,
              valueColor: const AlwaysStoppedAnimation(Colors.blue),
            ),
          ),
        )
      ],
    );
  }
}
