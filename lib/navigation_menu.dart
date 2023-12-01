import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = BHelperFunctions.isDarkMode(context);
    return Obx(
      () => Scaffold(
        bottomNavigationBar: NavigationBar(
          elevation: 0,
          height: 80,
          backgroundColor: !darkMode ? BColors.white : BColors.black,
          indicatorColor: darkMode
              ? BColors.white.withOpacity(0.1)
              : BColors.black.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
          ],
        ),
        body: controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
  ];
}
