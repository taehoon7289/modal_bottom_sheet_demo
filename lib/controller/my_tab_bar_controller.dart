import 'package:get/get.dart';

class MyTabBarController extends GetxController {
  RxInt currentTabIndex = 0.obs;

  void updateCurrentTabIndex(int value) {
    currentTabIndex.value = value;
  }
}
