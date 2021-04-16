import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rawinpornweb/utility/my_style.dart';

class ShowContent extends StatelessWidget {
  List<String> pathBanners = ['images/banner1.png', 'images/banner2.png'];
  List<Widget> widgets = [];

  // Constractor ==> Main Method
  ShowContent() {
    initContent();
  }

  void initContent() {
    for (var item in pathBanners) {
      widgets.add(
        Image.asset(item),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitle(title: 'Promotion Today !!!'),
        CarouselSlider(
          items: widgets,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
          ),
        ),
      ],
    );
  }

  Text buildTitle({String title}) {
    return Text(
      title,
      style: MyStyle().h3Title(),
    );
  }
}
