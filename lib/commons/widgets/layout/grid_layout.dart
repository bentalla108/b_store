// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class BGridLayout extends StatelessWidget {
  const BGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 280,
    required this.itemBuilder,
  });
  final int itemCount;
  final double mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: BSizes.gridViewSpacing,
            crossAxisSpacing: BSizes.gridViewSpacing,
            crossAxisCount: 2,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
