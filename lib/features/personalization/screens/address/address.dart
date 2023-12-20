import 'package:b_store/features/personalization/screens/address/add_new_address.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../commons/widgets/appbar/appbar.dart';
import 'widgets/single_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: BColors.primary,
        child: IconButton(
            onPressed: () => Get.to(() => const AddNewAddressScreen()),
            icon: const Icon(
              Iconsax.add,
              color: BColors.white,
            )),
      ),
      appBar: const BAppbar(
        title: Text(
          'Addresses ',
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              SingleAdress(
                isSelected: true,
              ),
              SingleAdress(
                isSelected: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
