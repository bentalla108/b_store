import 'package:b_store/features/authentication/controllers_onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return Positioned(
        child: ElevatedButton(
      onPressed: OnBoardingController.instance.nextPage,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: dark ? BColors.primary : BColors.dark,
      ),
      child: const Icon(Icons.arrow_right),
    ));
  }
}
