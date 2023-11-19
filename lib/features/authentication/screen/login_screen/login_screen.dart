import 'package:b_store/commons/login_signup_widgets/form_divider.dart';
import 'package:b_store/commons/login_signup_widgets/social_buttons.dart';
import 'package:b_store/commons/styles/spacing_styles.dart';
import 'package:b_store/features/authentication/screen/login_screen/widgets/login_form.dart';
import 'package:b_store/features/authentication/screen/login_screen/widgets/login_header.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo - Title - Subtitle
              BLoginHeader(),

              //Form
              BLoginForm(),

              /// Divider

              BFormDivider(
                dividerText: BTexts.orSignInWith,
              ),
              SizedBox(
                height: BSizes.spaceBtwSections,
              ),
              BSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
