import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet_demo/constants.dart';
import 'package:modal_bottom_sheet_demo/controller/my_bottom_navigation_bar_controller.dart';
import 'package:modal_bottom_sheet_demo/controller/my_home_popular_controller.dart';
import 'package:modal_bottom_sheet_demo/controller/my_tab_bar_controller.dart';
import 'package:modal_bottom_sheet_demo/layout/my_app_bar.dart';
import 'package:modal_bottom_sheet_demo/layout/my_bottom_navigation_bar.dart';
import 'package:modal_bottom_sheet_demo/layout/my_tab_bar_delegate.dart';
import 'package:modal_bottom_sheet_demo/vo/menu_body_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* 컨트롤러 등록 */
    Get.put(MyTabBarController());
    Get.put(MyBottomNavigationBarController());
    Get.put(MyHomePopularController());
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        title: '모달연습##',
        debugShowCheckedModeBanner: false,
        // home: MyHome(),
        initialRoute: '/',
        routes: {
          '/': (_) => MyHome(),
        },
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
        length: Constants.MENU_BODY_WIDGET_LIST.length,
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
                        for (MenuBodyWidget menu
                            in Constants.MENU_BODY_WIDGET_LIST)
                          menu.widget
                      ],
                    ),
                    // Center(
                    //   child: Expanded(
                    //     child: Container(
                    //       color: Colors.red,
                    //     ),
                    //   ),
                    // ),
                    Obx(() =>
                        MyBottomNavigationBarController.to.menuSheetFlag.value
                            ? Center(
                                child: Expanded(
                                  child: Container(
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            : Container()),
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
