import 'package:b_store/commons/widgets/login_signup_widgets/form_divider.dart';
import 'package:b_store/commons/widgets/login_signup_widgets/social_buttons.dart';
import 'package:b_store/features/authentication/screen/signup_screen/widgets/sign_up_form.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        automaticallyImplyLeading: true,
      ),
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
