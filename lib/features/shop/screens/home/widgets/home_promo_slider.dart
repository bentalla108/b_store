import 'package:b_store/features/shop/contollers_shop/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commons/widgets/container/circular_container.dart';
import '../../../../../commons/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class BPromoSlider extends StatelessWidget {
  const BPromoSlider({
    super.key,
    required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banner
              .map(
                (url) => BRoundedIMage(
                  imageUrl: url,
                ),
              )
              .toList(),
          options: CarouselOptions(
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            viewportFraction: 1,
          ),
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banner.length; i++)
                  BCircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.caroussalCurrentIndex.value == i
                        ? BColors.primary
                        : BColors.grey,
                    margin: const EdgeInsets.only(
                      right: 10,
                    ),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
