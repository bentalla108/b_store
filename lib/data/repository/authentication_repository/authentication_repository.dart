import 'package:b_store/features/authentication/screen/login_screen/login_screen.dart';
import 'package:b_store/features/authentication/screen/onboarding_screen/onboarding_screen.dart';
import 'package:b_store/features/authentication/screen/signup_screen/verify_email_screen.dart';
import 'package:b_store/navigation_menu.dart';
import 'package:b_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:b_store/utils/exceptions/firebase_exceptions.dart';
import 'package:b_store/utils/exceptions/format_exceptions.dart';
import 'package:b_store/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

// ! Variabbles

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  //! Called From main.dart on app launch

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screendirect();

    super.onReady();
  }

  //Function to show relevant Screens

  screendirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(
              email: _auth.currentUser?.email,
            ));
      }
    } else {
      deviceStorage.writeIfNull('isFirstime', true);
      deviceStorage.read('isFirstime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => const OnBoardingScreen());
    }
  }

/*--------------------------------------- Email & Password Sign In -------------------------*/

//! [Email Authentication] - SignIn
//! [Email Authentication] - Register

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw BFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const BFormatException();
    } on PlatformException catch (e) {
      throw BPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong ! Please try again';
    }
  }
//! [Email Authentication] - Logout

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      throw BFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const BFormatException();
    } on PlatformException catch (e) {
      throw BPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong ! Please try again';
    }
  }

  //![Email Authentication] - Email Verification

  Future<void> sendEmailVerification() async {
    try {
      return await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw BFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const BFormatException();
    } on PlatformException catch (e) {
      throw BPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong ! Please try again';
    }
  }
}
