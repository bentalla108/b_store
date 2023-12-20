import 'package:b_store/commons/widgets/container/primary_header_container.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:b_store/features/personalization/screens/address/address.dart';
import 'package:b_store/features/personalization/screens/profile/profile.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../commons/widgets/appbar/appbar.dart';
import '../../../../commons/widgets/list_tile/setting_list_tile.dart';
import '../../../../commons/widgets/list_tile/user_profile_list_tile.dart';
import '../../../../utils/constants/colors.dart';

class SettingsScreens extends StatelessWidget {
  const SettingsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //% HEADER

            BPrimaryHeaderContainer(
                child: Column(
              children: [
                //! Appbar
                BAppbar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: BColors.white),
                  ),
                ),
                const BSpaceBtwSectionH(),

                //! User Profile Card

                BUserProfileTileWidget(
                  onPressed: () => Get.to(const ProfileScreen()),
                ),

                const BSpaceBtwSectionH(),
              ],
            )),

            Padding(
              padding: const EdgeInsets.all(BSizes.defaultSpace),
              child: Column(
                children: [
                  //! Account Setting
                  const BSectionHeading(
                      title: 'Account Sectings', showActionButton: false),
                  const BSpaceBtwItemsH(),
                  BSettingMenuTile(
                      icon: Iconsax.safe_home,
                      onTap: () => Get.to(() => const UserAddressScreen()),
                      title: 'My Address',
                      subtitle: ' Set shopping delivery address'),
                  BSettingMenuTile(
                      icon: Iconsax.shopping_cart,
                      onTap: () {},
                      title: 'My Cart',
                      subtitle: 'Add , remove products and move to checkout'),
                  BSettingMenuTile(
                      icon: Iconsax.bag_tick,
                      onTap: () {},
                      title: 'My Order',
                      subtitle: ' In-process and completed orders'),
                  BSettingMenuTile(
                      icon: Iconsax.bank,
                      onTap: () {},
                      title: 'Bank  Account',
                      subtitle:
                          'Withdraw balance to registered bank account ,'),
                  BSettingMenuTile(
                      icon: Iconsax.discount_shape,
                      onTap: () {},
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons'),
                  BSettingMenuTile(
                      icon: Iconsax.notification,
                      onTap: () {},
                      title: 'My Notification',
                      subtitle: ' Set any kind of notification message'),
                  BSettingMenuTile(
                      icon: Iconsax.security_card,
                      onTap: () {},
                      title: 'My Account Privacy',
                      subtitle: 'Manage data usage and connected account'),

                  const BSpaceBtwItemsH(),

                  //! App Setting

                  const BSectionHeading(
                      title: 'App Sectings', showActionButton: false),
                  const BSpaceBtwItemsH(),
                  BSettingMenuTile(
                      icon: Iconsax.location,
                      trailing: Switch(value: true, onChanged: (value) {}),
                      onTap: () {},
                      title: 'Geolocalisation',
                      subtitle: 'Set recommendation based on location'),
                  BSettingMenuTile(
                      icon: Iconsax.security_user,
                      trailing: Switch(value: true, onChanged: (value) {}),
                      onTap: () {},
                      title: 'Geolocalisation',
                      subtitle: 'Search result is safe for all ages'),
                  BSettingMenuTile(
                      icon: Iconsax.image,
                      trailing: Switch(value: false, onChanged: (value) {}),
                      onTap: () {},
                      title: 'HD Image Quality',
                      subtitle: 'Set image quality to be seen'),
                  const BSpaceBtwItemsH(),

                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('Logout'))),
                  const SizedBox(
                    height: BSizes.spaceBtwItems / 2,
                  )
                ],
              ),
            )

            //% Body
          ],
        ),
      ),
    );
  }
}
