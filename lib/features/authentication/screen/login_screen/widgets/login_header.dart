import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BLoginHeader extends StatelessWidget {
  const BLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = BHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            !dark ? BImages.darkAppLogo : BImages.lightAppLogo,
          ),
        ),
        // const SizedBox(
        //   height: BSizes.sm,
        // ),
        Text(
          BTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: BSizes.sm,
        ),
        Text(
          BTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
