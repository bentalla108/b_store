import 'package:b_store/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:b_store/features/authentication/screen/password_configuration/forgot_password_screen.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: BTexts.email),
            ),
            const SizedBox(
              height: BSizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Iconsax.eye_slash),
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: BTexts.password),
            ),

            const SizedBox(
              height: BSizes.spaceBtwInputFields / 2,
            ),

            /// Remember me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  /// Remember me
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    TextButton(
                      onPressed: () {},
                      child: const Text(BTexts.rememberMe),
                    ),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () {
                    Get.to(() => const ForgotPasswordScreen());
                  },
                  child: const Text(BTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(
              height: BSizes.spaceBtwSections,
            ),

            /// Sign in
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(BTexts.signIn),
              ),
            ),
            const SizedBox(
              height: BSizes.spaceBtwItems,
            ),

            /// Create account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: controller.gotoSignUpScreen,
                child: const Text(BTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
