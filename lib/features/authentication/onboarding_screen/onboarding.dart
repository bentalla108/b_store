import 'package:b_store/features/authentication/onboarding_screen/Widgets/onboarding_custom_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers_onboarding/onboarding_screen.dart';
import 'Widgets/onboarding_elevatebutton.dart';
import 'Widgets/onboarding_dotposition.dart';
import 'Widgets/onboarding_skip.dart';
import 'contents/onboarding_content.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            itemCount: OnBoardindContent.title.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => OnBoardingPage(
              title: OnBoardindContent.title[index],
              image: OnBoardindContent.image[index],
              subTitle: OnBoardindContent.subTitle[index],
            ),
          ),

          // Skip Button//
          const OnBoardingSkip(),

          //Dot navigation SmoothPageIndicator
          const OnBoardingDotPosition(),

          //Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
