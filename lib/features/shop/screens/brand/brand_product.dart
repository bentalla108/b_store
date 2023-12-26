import 'package:b_store/commons/widgets/appbar/appbar.dart';
import 'package:b_store/commons/widgets/brand_card/brand_card.dart';
import 'package:b_store/commons/widgets/products/sort_product/sortable_product.dart';
import 'package:b_store/commons/widgets/space/spacer.dart';
import 'package:b_store/utils/constants/image_strings.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BAppbar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              BBrandCard(
                brandTitle: 'Nike',
                imageUrl: BImages.nikeLogo,
                showBorder: true,
              ),
              BSpaceBtwSectionH(),
              BSortableProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
