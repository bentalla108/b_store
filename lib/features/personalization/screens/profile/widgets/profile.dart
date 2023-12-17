import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileMenu extends StatelessWidget {
  final String title;

  final String value;

  final VoidCallback onPressed;
  final IconData icon;

  const ProfileMenu(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.value,
      this.icon = Iconsax.arrow_right_34});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(BSizes.spaceBtwItems / 2),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis),
            ),
            Expanded(
              flex: 5,
              child: Text(value,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis),
            ),
            Expanded(child: Icon(icon))
          ],
        ),
      ),
    );
  }
}
