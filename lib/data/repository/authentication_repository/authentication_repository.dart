import 'package:b_store/features/authentication/screen/login_screen/login_screen.dart';
import 'package:b_store/features/authentication/screen/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

// ! Variabbles

  final deviceStorage = GetStorage();

  //! Called From main.dart on app launch

  @override
  void onReady() {
    FlutterNativeSplash.remove();

    super.onReady();
  }

  //Function to show relevant Screens

  screendirect() async {
    deviceStorage.writeIfNull('isFirstimer', true);
    deviceStorage.read('isFirstime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }
}
