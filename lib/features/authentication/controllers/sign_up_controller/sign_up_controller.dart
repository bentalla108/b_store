import 'package:b_store/data/modal/user_modal/user_modal.dart';
import 'package:b_store/data/repository/authentication_repository/authentication_repository.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/helpers/network_manager.dart';
import 'package:b_store/utils/popups/fullscreen_loader.dart';
import 'package:b_store/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController {
  static SignUpController get instance => Get.find();

  final RxBool hidePassword = true.obs;
  final RxBool privacyPolicy = false.obs;

  final email = TextEditingController();

  final lastName = TextEditingController();

  final username = TextEditingController();

  final firstName = TextEditingController();
  final password = TextEditingController();

  final phoneNumber = TextEditingController();

  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    try {
      //! Start Loading
      BFullScreenLoader.openLoadingDialog(
          "We are processing your information", BImages.verifyIllustration);

      //! Check Connectivity
      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        return;
      }

      //! Form Validation

      if (!signUpFormKey.currentState!.validate()) {
        return;
      }

      //! Privacy Policy check

      if (!privacyPolicy.value) {
        BLoaders.warningSnackBar(
            title: 'Accep Privacy Policy',
            message:
                'In order to create account you must have to read and accept the Privacy  & Term of Use');
      }

      //! Register user in the Firebase auth & save user in Firebase

      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //! Save authenticate user  data in the firebase firestore
      final newUser = UserModal(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '');

      //! show Succes message

      //! Move to Virify Email Screen

      //BFull
    } catch (e) {
      // Some generic error to the user
      BLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    } finally {
      BFullScreenLoader.stopLoading();
    }
  }
}
