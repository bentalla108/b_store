import 'package:b_store/commons/widgets/appbar/appbar.dart';
import 'package:b_store/commons/widgets/images/circular_image.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/commons/widgets/text/custom_headline_text.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: SizedBox(
            width: double
                .infinity, // Pour center l'image ou bien utiliser le Widget Center
            child: Column(
              children: [
                const BCircularImage(
                    width: 80, height: 80, imageUrl: BImages.user),
                TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture')),
                const BSpaceBtwItemsH(),
                const Divider(),
                const BSpaceBtwItemsH(),
                const BSectionHeading(
                  title: 'Profile Information',
                  showActionButton: false,
                ),
                const BSpaceBtwItemsH(),
                ProfileMenu(
                  title: 'Nom',
                  value: 'BenTalla',
                  onPressed: () {},
                ),
                ProfileMenu(
                  title: 'UserName',
                  value: 'Ben',
                  onPressed: () {},
                ),

                const BSpaceBtwItemsH(),
                const Divider(),
                const BSpaceBtwItemsH(),

                //! Personal Informationx
                const BSectionHeading(
                  title: 'Personal Information',
                  showActionButton: false,
                ),
                const BSpaceBtwItemsH(),
                ProfileMenu(
                  icon: Iconsax.copy,
                  title: 'UserId',
                  value: '0B44',
                  onPressed: () {},
                ),
                ProfileMenu(
                  title: 'email',
                  value: 'bentalla@ben7ing.com',
                  onPressed: () {},
                ),
                ProfileMenu(
                  title: 'Phone Number',
                  value: '77 123 456 78',
                  onPressed: () {},
                ),
                ProfileMenu(
                  title: 'Gender',
                  value: 'M',
                  onPressed: () {},
                ),
                ProfileMenu(
                  title: 'Date of birth',
                  value: '19/03/3000',
                  onPressed: () {},
                ),
                const Divider(),

                const SizedBox(
                  height: BSizes.spaceBtwItems / 2,
                ),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
