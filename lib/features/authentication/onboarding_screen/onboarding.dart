import 'package:b_store/features/authentication/onboarding_screen/Widgets/onBoarding_custom_page.dart';
import 'package:flutter/material.dart';

import 'Widgets/OnBoarding_elevatebutton.dart';
import 'Widgets/onBoarding_dotposition.dart';
import 'Widgets/onBoarding_skip.dart';
import 'contents/onboarding_content.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView.builder(
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

          const OnBoardingElevetaButton()
        ],
      ),
    );
  }
}
