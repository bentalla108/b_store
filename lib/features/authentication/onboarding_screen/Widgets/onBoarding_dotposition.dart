import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/device/device_utility.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:b_store/utils/theme/custom_themes/text_theme.dart';
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
    final dark = BHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: BDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: BSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: OnBoardindContent.title.length,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? BColors.light : BColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
