import 'package:b_store/features/authentication/screens/utilities/onBoarding_custom_widgets.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'utilities/onboarding_content.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // Horizontal Scrollable Page
        PageView.builder(
          itemCount: OnBoardindContent.title.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => OnBoardingPage(
            title: OnBoardindContent.title[index],
            image: OnBoardindContent.image[index],
            subTitle: OnBoardindContent.subTitle[index],
          ),
        )

        // Skip Button//

        //Dot navigation SmoothPageIndicator

        //Circular Button
      ]),
    );
  }
}
