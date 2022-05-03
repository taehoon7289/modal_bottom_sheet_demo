import 'package:get/get.dart';

class MyHomePopularController extends GetxController {
  static MyHomePopularController get to => Get.find<MyHomePopularController>();

  RxInt currentIndex = 0.obs;

  void updateCurrentIndex(int value) {
    currentIndex.value = value;
  }

  @override
  void onInit() {
    ever(currentIndex, (_) => print('currentIndex :: $_'));
    super.onInit();
  }
}
