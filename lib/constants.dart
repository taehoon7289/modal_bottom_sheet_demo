import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet_demo/body/my_home_popular.dart';
import 'package:modal_bottom_sheet_demo/vo/menu_body_widget.dart';

class Constants {
  static List<MenuBodyWidget> MENU_BODY_WIDGET_LIST = [
    MenuBodyWidget(
      title: '인기',
      widget: MyHomePopular(),
    ),
    MenuBodyWidget(
      title: '팔로잉',
      widget: Center(
        child: Text('팔로잉'),
      ),
    ),
    MenuBodyWidget(
      title: '사진',
      widget: Center(
        child: Text('사진'),
      ),
    ),
    MenuBodyWidget(
      title: '집들이',
      widget: Center(
        child: Text('집들이'),
      ),
    ),
    MenuBodyWidget(
      title: '노하우',
      widget: Center(
        child: Text('노하우'),
      ),
    ),
    MenuBodyWidget(
      title: '전문가집들이',
      widget: Center(
        child: Text('전문가집들이'),
      ),
    ),
    MenuBodyWidget(
      title: '질문과답변',
      widget: Center(
        child: Text('질문과답변'),
      ),
    ),
  ];
  static const List<String> BOTTOM_MENU_LIST = [
    '사진 올리기',
    '동영상 올리기',
    '리뷰 쓰기',
    '인테러이시공 리뷰쓰기',
    '인테리어 질문하기',
  ];
  static const List<String> HOME_POPULAR_BANNER_IMAGE_LIST = [
    '164938407091284242.png',
    '164975564132830983.jpg',
    '164999763516031480.jpg',
    '165042947715563845.jpg',
    '165052515596612914.png',
    '165094137107207146.jpg',
    '165113377324372543.jpg',
    '165120003833373755.jpg',
    '165122001410579646.jpg',
    '165132983667855670.jpg',
  ];
}
