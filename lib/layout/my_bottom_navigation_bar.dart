import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet_demo/controller/my_bottom_navigation_bar_controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.white,
            width: 0.5,
          ),
        ),
      ),
      child: Row(children: [
        Expanded(
          flex: 4,
          child: Obx(() => BottomNavigationBar(
                backgroundColor: Colors.white,
                currentIndex:
                    MyBottomNavigationBarController.to.currentIndex.value,
                elevation: 0,
                selectedItemColor: Colors.lightBlueAccent,
                unselectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                onTap: (val) {
                  MyBottomNavigationBarController.to.updateCurrentIndex(val);
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
          child: Container(
            color: Colors.white,
            child: ElevatedButton(
              onPressed: () {
                // ScaffoldMessenger.of(context).showMaterialBanner(
                //     MaterialBanner(content: Text('qeqwe'), actions: [
                //   Text('1'),
                //   Text('2'),
                //   Text('3'),
                // ]));

                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${DateTime.now()}'),
                    action: SnackBarAction(
                      label: 'ddd undo',
                      onPressed: () {},
                    ),
                  ),
                );
                // showBottomSheet(
                //   enableDrag: false,
                //   context: context,
                //   backgroundColor: Colors.transparent,
                //   builder: (context) => Container(
                //     child: Column(
                //       children: [
                //         Expanded(
                //           child: Container(
                //             color: Color.fromRGBO(0, 0, 0, 0.7),
                //           ),
                //         ),
                //         Container(
                //           height: Constants.BOTTOM_MENU_LIST.length * 60,
                //           child: ListView.separated(
                //             scrollDirection: Axis.vertical,
                //             itemCount: Constants.BOTTOM_MENU_LIST.length,
                //             itemBuilder: (BuildContext context, int index) {
                //               return GestureDetector(
                //                 onTap: () {
                //                   print('val');
                //                 },
                //                 child: Container(
                //                   color: Colors.green,
                //                   padding: EdgeInsets.symmetric(horizontal: 10),
                //                   alignment: Alignment.centerLeft,
                //                   // height: 30,
                //                   child: Text(
                //                     Constants.BOTTOM_MENU_LIST[index],
                //                   ),
                //                 ),
                //               );
                //             },
                //             separatorBuilder: (BuildContext context, int index) {
                //               return Divider();
                //             },
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // );

                MyBottomNavigationBarController.to.updateMenuSheetFlag();
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.lightBlueAccent,
                shape: CircleBorder(),
              ),
              child: Icon(Icons.add),
            ),
          ),
        ),
      ]),
    );
  }
}
