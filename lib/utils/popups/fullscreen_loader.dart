import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commons/widgets/loader/animation_loader.dart';

class BFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: BHelperFunctions.isDarkMode(Get.context!)
                  ? BColors.dark
                  : BColors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  BAnimationLoader(
                    text: text,
                    animation: animation,
                  ),
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.context!).pop();
  }
}
