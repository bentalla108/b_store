import 'package:b_store/commons/widgets/success_screen/success_screen.dart';
import 'package:b_store/features/authentication/screen/login_screen/login_screen.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => const LoginScreen());
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              //Image

              Image(
                image: const AssetImage(BImages.deliveredEmailIllustration),
                width: BHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              // Title & subtitle

              Text(
                BTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),
              Text(
                'support@bentalla.dev',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),
              Text(
                BTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => SucessScreen(
                        image: BImages.staticSuccessIllustration,
                        title: BTexts.yourAccountCreatedTitle,
                        subTitle: BTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen())));
                  },
                  child: const Text(BTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),

              /// Create account
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(BTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
