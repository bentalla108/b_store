import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/text_strings.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BTermAndCheck extends StatelessWidget {
  const BTermAndCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = BHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        Text.rich(TextSpan(
          children: [
            TextSpan(
                text: '${BTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: '${BTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? BColors.white : BColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? BColors.white : BColors.primary,
                  ),
            ),
            TextSpan(
                text: '${BTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: '${BTexts.termsOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? BColors.white : BColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? BColors.white : BColors.primary,
                  ),
            ),
          ],
        )),
      ],
    );
  }
}
