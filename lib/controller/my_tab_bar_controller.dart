import 'package:get/get.dart';

class MyTabBarController extends GetxController {
  static MyTabBarController get to => Get.find<MyTabBarController>();

  RxInt currentTabIndex = 0.obs;

  void updateCurrentTabIndex(int value) {
    currentTabIndex.value = value;
  }

  @override
  void onInit() {
    ever(currentTabIndex, (_) => print('currentTabIndex :: $_'));
    super.onInit();
  }
}
