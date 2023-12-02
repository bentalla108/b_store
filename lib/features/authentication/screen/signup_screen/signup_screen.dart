import 'package:b_store/commons/widgets/login_signup_widgets/form_divider.dart';
import 'package:b_store/commons/widgets/login_signup_widgets/social_buttons.dart';
import 'package:b_store/features/authentication/screen/signup_screen/verify_email_screen.dart';
import 'package:b_store/features/authentication/screen/signup_screen/widgets/sign_up_form.dart';
import 'package:b_store/features/authentication/screen/signup_screen/widgets/terms_and_conditions.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              // Titl
              Text(
                BTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),
              //Form
              const BSignUpForm(),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// Term & Condition check
              const BTermAndCheck(),

              /// Buttons Sections
              /// Create account buttons

              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const VerifyEmailScreen());
                  },
                  child: const Text(BTexts.createAccount),
                ),
              ),

              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// Divider

              const BFormDivider(
                dividerText: BTexts.orSignUpWith,
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// Social Buttons connect

              const BSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
