import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet_demo/constants.dart';
import 'package:modal_bottom_sheet_demo/controller/my_home_popular_controller.dart';

class MyHomePopular extends StatelessWidget {
  const MyHomePopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                Swiper(
                  autoplay: true,
                  itemCount: Constants.HOME_POPULAR_BANNER_IMAGE_LIST.length,
                  // pagination: SwiperPagination(),
                  // control: SwiperControl(),
                  onIndexChanged: (index) {
                    MyHomePopularController.to.updateCurrentIndex(index);
                  },
                  itemHeight: 10,
                  itemWidth: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/${Constants.HOME_POPULAR_BANNER_IMAGE_LIST[index]}',
                          // height: MediaQuery.of(context).size.height,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                          child: Obx(
                            () => Text(
                              '${MyHomePopularController.to.currentIndex.value + 1} / ${Constants.HOME_POPULAR_BANNER_IMAGE_LIST.length}',
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          // flex: 1,
          child: Center(
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('ddfsdfasdf'),
              style: TextButton.styleFrom(onSurface: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: ButtonBar(
              buttonPadding: EdgeInsets.all(100),
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('OPOPO'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('dd1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('dd2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('dd3'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
