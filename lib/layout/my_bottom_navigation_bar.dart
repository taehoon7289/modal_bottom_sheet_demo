import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:modal_bottom_sheet_demo/controller/my_bottom_navigation_bar_controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyBottomNavigationBarController myBottomNavigationBarController =
        MyBottomNavigationBarController();
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(children: [
        Expanded(
          flex: 4,
          child: Obx(() => BottomNavigationBar(
                currentIndex:
                    myBottomNavigationBarController.currentIndex.value,
                elevation: 0,
                selectedItemColor: Colors.lightBlueAccent,
                unselectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                onTap: (val) {
                  myBottomNavigationBarController.updateCurrentIndex(val);
                },
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.local_convenience_store_rounded),
                      label: '스토어'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.man_sharp), label: '인테리어시공'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: '마이페이지'),
                ],
              )),
        ),
        Expanded(
          flex: 1,
          child: ElevatedButton(
            onPressed: () {
              // showBarModalBottomSheet(
              //     expand: false,
              //     context: context,
              //     backgroundColor: Colors.transparent,
              //     builder: (context) => Container(
              //           child: Column(
              //             mainAxisSize: MainAxisSize.min,
              //             children: [
              //               Text('00000000'),
              //               Text('11111111'),
              //               Text('2222222'),
              //             ],
              //           ),
              //         ));
              myBottomNavigationBarController.updateBottomSheetFlag();
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Colors.lightBlueAccent,
              shape: CircleBorder(),
            ),
            child: Icon(Icons.add),
          ),
        ),
      ]),
    );
  }
}
