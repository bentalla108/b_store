import 'package:b_store/commons/widgets/appbar/appbar.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../commons/widgets/custom_textfield/custom_field_text.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        title: Text(
          'Add New Address ',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              const CustomTextField(
                  labelText: 'Name', prefixIconName: Iconsax.user),
              const SizedBox(height: BSizes.spaceBtwInputFields),
              const CustomTextField(
                  labelText: 'Phone Number', prefixIconName: Iconsax.mobile),
              const SizedBox(height: BSizes.spaceBtwInputFields),
              const Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        labelText: 'Street',
                        prefixIconName: Iconsax.building_31),
                  ),
                  SizedBox(width: BSizes.spaceBtwInputFields),
                  Expanded(
                    child: CustomTextField(
                        labelText: 'Postal Code', prefixIconName: Iconsax.code),
                  ),
                  SizedBox(height: BSizes.spaceBtwInputFields),
                ],
              ),
              const SizedBox(height: BSizes.spaceBtwInputFields),
              const Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        labelText: 'City', prefixIconName: Iconsax.building),
                  ),
                  SizedBox(width: BSizes.spaceBtwInputFields),
                  Expanded(
                    child: CustomTextField(
                        labelText: 'State', prefixIconName: Iconsax.activity),
                  ),
                  SizedBox(height: BSizes.spaceBtwInputFields),
                ],
              ),
              const SizedBox(height: BSizes.spaceBtwInputFields),
              const CustomTextField(
                  labelText: 'Country', prefixIconName: Iconsax.global),
              const SizedBox(height: BSizes.defaultSpace),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Save')))
            ],
          ),
        ),
      ),
    );
  }
}
