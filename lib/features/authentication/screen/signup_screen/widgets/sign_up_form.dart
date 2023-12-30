import 'package:b_store/commons/widgets/custom_textfield/custom_field_text.dart';
import 'package:b_store/features/authentication/screen/signup_screen/widgets/terms_and_conditions.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:b_store/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controllers/sign_up_controller/sign_up_controller.dart';

class BSignUpForm extends StatelessWidget {
  const BSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: CustomTextField(
                validator: (value) =>
                    BValidator.validateEmptyText('First Name', value),
                controller: controller.username,
                labelText: BTexts.username,
                prefixIconName: Iconsax.user,
              )),
              const SizedBox(
                width: BSizes.spaceBtwItems,
              ),
              Expanded(
                child: CustomTextField(
                  validator: (value) =>
                      BValidator.validateEmptyText('Last Name', value),
                  controller: controller.lastName,
                  labelText: BTexts.lastName,
                  prefixIconName: Iconsax.user,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          CustomTextField(
            validator: (value) => BValidator.validateEmail(value),
            controller: controller.email,
            labelText: BTexts.email,
            prefixIconName: Iconsax.direct,
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          CustomTextField(
            validator: (value) => BValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
            labelText: BTexts.phoneNo,
            prefixIconName: Iconsax.user,
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          Obx(
            () => CustomTextField(
                validator: (value) => BValidator.validatePassword(value),
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                labelText: BTexts.password,
                prefixIconName: Iconsax.password_check,
                suffixIconName: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye
                      : Iconsax.eye_slash),
                )),
          ),

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
              onPressed: () => controller.signUp(),
              child: const Text(BTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
