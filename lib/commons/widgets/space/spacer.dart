import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class BSpaceBtwSectionH extends StatelessWidget {
  const BSpaceBtwSectionH({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: BSizes.spaceBtwSections,
    );
  }
}

class BSpaceBtwSectionW extends StatelessWidget {
  const BSpaceBtwSectionW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: BSizes.spaceBtwSections,
    );
  }
}

class BSpaceBtwItemsH extends StatelessWidget {
  const BSpaceBtwItemsH({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: BSizes.spaceBtwItems,
    );
  }
}

class BSpaceBtwItemsW extends StatelessWidget {
  const BSpaceBtwItemsW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: BSizes.spaceBtwItems,
    );
  }
}
