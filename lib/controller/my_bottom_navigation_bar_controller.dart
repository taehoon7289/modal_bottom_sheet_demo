import 'package:get/get.dart';

class MyBottomNavigationBarController extends GetxController {
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
    print('onInit');
    ever(currentIndex, (_) {
      print('currentIndex $_ currentIndex??????????');
    });
    ever(menuSheetFlag, (_) => print('ssdfs $_ dkjfsdfjsld??????????'));
  }
}
