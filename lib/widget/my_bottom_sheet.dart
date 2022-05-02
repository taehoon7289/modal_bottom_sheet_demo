import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet_demo/controller/my_bottom_navigation_bar_controller.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        height: 500,
        color: Colors.pink,
        child: Center(
          child: Text(
              '${Get.find<MyBottomNavigationBarController>().menuSheetFlag.value}dddddddddd'),
        )));
  }
}
