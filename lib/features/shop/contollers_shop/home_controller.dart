import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final RxInt caroussalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    caroussalCurrentIndex.value = index;
  }
}
