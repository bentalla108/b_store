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
      this.cartCounterIon,
      this.iconColor = BColors.white});

  final VoidCallback cartPressed;
  final IconData icon;
  final Color iconColor;
  final String? cartCounterIon;

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
        cartCounterIon != null
            ? CustomBadge(
                text: cartCounterIon!,
              )
            : const SizedBox()
      ],
    );
  }
}
