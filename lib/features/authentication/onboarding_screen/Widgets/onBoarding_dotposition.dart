import 'package:b_store/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/device/device_utility.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/sizes.dart';
import '../contents/onboarding_content.dart';

class OnBoardingDotPosition extends StatelessWidget {
  const OnBoardingDotPosition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = BHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: BDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: BSizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: controller.dotNavigationClick,
        controller: controller.pageController,
        count: OnBoardingContent.title.length,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? BColors.light : BColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
