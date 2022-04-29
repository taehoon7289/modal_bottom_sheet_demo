import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 8,
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: '오늘의집 통합검색',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.grey[300],
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onTap: () {
                  print('터치하면 검색페이지로 이동해야함.');
                },
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed: () {
                        print('북마크 누름');
                      },
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed: () {
                        print('카트 누름');
                      },
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
