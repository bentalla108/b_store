import 'package:b_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BLoaders {
  static successSnackBar({required title, message, duration = 3}) {
    Get.snackbar(title, message,
        duration: Duration(seconds: duration),
        isDismissible: true,
        shouldIconPulse: true,
        colorText: BColors.white,
        backgroundColor: BColors.primary,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(10),
        icon: const Icon(
          Iconsax.check,
          color: BColors.white,
        ));
  }

  static warningSnackBar({required title, message, duration = 3}) {
    Get.snackbar(title, message,
        duration: Duration(seconds: duration),
        isDismissible: true,
        shouldIconPulse: true,
        colorText: BColors.white,
        backgroundColor: BColors.warning,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(10),
        icon: const Icon(
          Iconsax.check,
          color: BColors.white,
        ));
  }

  static errorSnackBar({required title, message, duration = 3}) {
    Get.snackbar(title, message,
        duration: Duration(seconds: duration),
        isDismissible: true,
        shouldIconPulse: true,
        colorText: BColors.white,
        backgroundColor: Colors.red.shade600,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(10),
        icon: const Icon(
          Iconsax.warning_2,
          color: BColors.white,
        ));
  }
}
