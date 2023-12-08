import 'package:b_store/commons/widgets/custom_badge/custom_badge.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

/// Custom cart (panier)

class BCartIconButton extends StatelessWidget {
  const BCartIconButton(
      {super.key,
      required this.cartPressed,
      this.icon = Iconsax.shopping_cart,
      this.cartCounter,
      this.iconColor = BColors.white});

  final VoidCallback cartPressed;
  final IconData icon;
  final Color iconColor;
  final String? cartCounter;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: cartPressed,
            icon: Icon(
              icon,
              color: iconColor,
            )),
        cartCounter != null
            ? CustomBadge(
                text: cartCounter!,
              )
            : const SizedBox()
      ],
    );
  }
}
