import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class BUserProfileTileWidget extends StatelessWidget {
  const BUserProfileTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const BCircularImage(
        imageUrl: BImages.user,
        padding: 0,
        height: 50,
        width: 50,
      ),
      title: Text(
        'Bentalla',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: BColors.white),
      ),
      subtitle: Text(
        'bentalla@ben7ing.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: BColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: BColors.white,
          )),
    );
  }
}
