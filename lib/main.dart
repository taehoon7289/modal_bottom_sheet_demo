import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet_demo/constants.dart';
import 'package:modal_bottom_sheet_demo/layout/my_app_bar.dart';
import 'package:modal_bottom_sheet_demo/layout/my_bottom_navigation_bar.dart';
import 'package:modal_bottom_sheet_demo/layout/my_tab_bar_delegate.dart';
import 'package:modal_bottom_sheet_demo/widget/my_bottom_sheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        title: '모달연습',
        // debugShowCheckedModeBanner: false,
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
        length: Constants.menus.length,
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
                child: TabBarView(
                  children: [
                    for (String menu in Constants.menus)
                      Center(
                        child: Container(
                          child: Text('${menu}'),
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: MyBottomNavigationBar(),
          // bottomSheet: MyBottomSheet(),
        ),
      ),
    );
  }
}
