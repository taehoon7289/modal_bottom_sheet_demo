import 'package:get/get.dart';

class MyBottomNavigationBarController extends GetxController {
  static MyBottomNavigationBarController get to =>
      Get.find<MyBottomNavigationBarController>();

  RxInt currentIndex = 0.obs;
  RxBool menuSheetFlag = false.obs;

  void updateCurrentIndex(int value) {
    currentIndex.value = value;
  }

  void updateMenuSheetFlag() {
    menuSheetFlag.value = !menuSheetFlag.value;
  }

  @override
  void onInit() {
    ever(currentIndex, (_) => print('currentIndex :: $_'));
    ever(menuSheetFlag, (_) => print('menuSheetFlag :: $_'));
    super.onInit();
  }
}
