import 'package:flutter/material.dart';

import '../../../../../commons/widgets/images/vertical_images_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class BHomeCategories extends StatelessWidget {
  const BHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        // - instead of ListView.Builder we can wrap the listView.separeted

        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return BVerticalImageText(
            image: BImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
