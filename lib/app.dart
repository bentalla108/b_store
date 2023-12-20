import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/authentication/screen/onboarding_screen/onboarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.light,
      theme: BAppTheme.lightTheme,
      darkTheme: BAppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: BColors.primaryBackground,
        body: OnBoardingScreen(),
      ),
    );
  }
}
