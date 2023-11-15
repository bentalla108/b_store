import 'package:b_store/features/authentication/onboarding_screen/onboarding.dart';
import 'package:b_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: BAppTheme.lightTheme,
      darkTheme: BAppTheme.darkdaTheme,
      home: const Scaffold(
        body: OnBoardingScreen(),
      ),
    );
  }
}
