import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BSocialButton extends StatelessWidget {
  const BSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              width: BSizes.iconMd,
              height: BSizes.iconMd,
              image: AssetImage(
                BImages.google,
              ),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: BSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              width: BSizes.iconMd,
              height: BSizes.iconMd,
              image: AssetImage(
                BImages.facebook,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
