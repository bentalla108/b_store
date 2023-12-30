import 'package:b_store/blindings/general_binding.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: BColors.primaryBackground,
        body: Scaffold(
            backgroundColor: BColors.primary,
            body: Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
