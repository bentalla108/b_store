import 'package:b_store/features/authentication/controllers_onboarding/onboarding_screen.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: BDeviceUtils.getAppBarHeight(),
      right: BSizes.defaultSpace,
      child: TextButton(
          onPressed: OnBoardingController.instance.skipPage,
          child: const Text('Next')),
    );
  }
}
