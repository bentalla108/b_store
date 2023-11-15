import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingElevetaButton extends StatelessWidget {
  const OnBoardingElevetaButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return Positioned(
        child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: dark ? BColors.primary : BColors.dark,
      ),
      child: const Icon(Icons.arrow_right),
    ));
  }
}
