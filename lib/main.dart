import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet_demo/constants.dart';
import 'package:modal_bottom_sheet_demo/controller/my_bottom_navigation_bar_controller.dart';
import 'package:modal_bottom_sheet_demo/controller/my_tab_bar_controller.dart';
import 'package:modal_bottom_sheet_demo/layout/my_app_bar.dart';
import 'package:modal_bottom_sheet_demo/layout/my_bottom_navigation_bar.dart';
import 'package:modal_bottom_sheet_demo/layout/my_tab_bar_delegate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyTabBarController());
    Get.put(MyBottomNavigationBarController());
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        title: '모달연습',
        debugShowCheckedModeBanner: false,
        home: MyHome(),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: Constants.MENU_LIST.length,
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: false,
                backgroundColor: Colors.white,
                title: MyAppBar(),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: MyTabBarDelegate(),
              ),
              SliverFillRemaining(
                child: Stack(
                  children: [
                    TabBarView(
                      children: [
                        for (String menu in Constants.MENU_LIST)
                          Center(
                            child: Container(
                              child: Text('${menu}'),
                            ),
                          )
                      ],
                    ),
                    // Center(
                    //   child: Expanded(
                    //     child: Container(
                    //       color: Colors.red,
                    //     ),
                    //   ),
                    // ),
                    Obx(() {
                      if (MyBottomNavigationBarController
                          .to.menuSheetFlag.value) {
                        return Center(
                          child: Expanded(
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    }),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: MyBottomNavigationBar(),
        ),
      ),
    );
  }
}
