import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet_demo/constants.dart';

class MyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const MyTabBarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
            color: Colors.grey,
          ))),
      child: TabBar(
        isScrollable: true,
        labelPadding: EdgeInsets.all(10),
        indicatorWeight: 2,
        indicatorColor: Colors.lightBlue,
        unselectedLabelColor: Colors.black,
        labelColor: Colors.lightBlue,
        tabs: [
          for (String menu in Constants.menus)
            Tab(
              child: Container(
                // padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Text(
                  '$menu',
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
