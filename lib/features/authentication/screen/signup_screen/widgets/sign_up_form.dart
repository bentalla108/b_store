import 'package:b_store/commons/widgets/custom_textfield/custom_field_text.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BSignUpForm extends StatelessWidget {
  const BSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: CustomTextField(
                labelText: BTexts.username,
                prefixIconName: Iconsax.user,
              )),
              SizedBox(
                width: BSizes.spaceBtwItems,
              ),
              Expanded(
                child: CustomTextField(
                  labelText: BTexts.lastName,
                  prefixIconName: Iconsax.user,
                ),
              ),
            ],
          ),
          SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          CustomTextField(
            labelText: BTexts.email,
            prefixIconName: Iconsax.direct,
          ),
          SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          CustomTextField(
            labelText: BTexts.phoneNo,
            prefixIconName: Iconsax.user,
          ),
          SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          CustomTextField(
            obscureText: true,
            labelText: BTexts.password,
            prefixIconName: Iconsax.password_check,
            suffixIconName: Iconsax.eye_slash,
          ),
        ],
      ),
    );
  }
}
