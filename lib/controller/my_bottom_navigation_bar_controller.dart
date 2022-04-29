import 'package:get/get.dart';

class MyBottomNavigationBarController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxInt bottomSheetFlag = 0.obs;

  void updateCurrentIndex(int value) {
    currentIndex.value = value;
  }

  void updateBottomSheetFlag() {
    print('bottomSheetFlag $bottomSheetFlag');
    bottomSheetFlag.value = bottomSheetFlag.value.abs() - 1;
  }
}
