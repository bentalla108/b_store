import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BFormDivider extends StatelessWidget {
  const BFormDivider({
    required this.dividerText,
    super.key,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final bool dark = BHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? BColors.darkGrey : BColors.grey,
            thickness: 0.5,
            endIndent: 5,
            indent: 60,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? BColors.darkGrey : BColors.grey,
            thickness: 0.5,
            endIndent: 60,
            indent: 5,
          ),
        ),
      ],

      /// Footer
    );
  }
}
