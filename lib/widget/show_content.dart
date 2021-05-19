import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rawinpornweb/utility/my_assets.dart';
import 'package:rawinpornweb/utility/my_style.dart';


class ShowContent extends StatelessWidget {
  List<String> pathBanners = [
    'images/banner1.png',
    'images/banner2.png',
    'images/banner1.png'
  ];

  List<String> titleCats = [
    'Cat1',
    'Cat2',
    'Cat3',
    'Cat4',
  ];
  List<String> pathCats = [
    MyAssets.cat1,
    MyAssets.cat2,
    MyAssets.cat3,
    MyAssets.cat4,
  ];

  List<Widget> widgets = [];

  Widget createWidget(String pathImage) {
    return Container(width: 100,
      child: Image.asset(pathImage),
    );
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;
    for (var item in titleCats) {
      widgets.add(createWidget(pathCats[index]));
      index++;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitle(title: 'Promotion Today !!!'),
        buildCarouselSlider(),
        buildTitle(title: 'Catigory !!!'),
        buildShowCat(),
      ],
    );
  }

  Widget buildShowCat() => GridView.extent(
        maxCrossAxisExtent: 160,
        children: widgets,
      );

  Widget buildCarouselSlider() {
    return CarouselSlider(
      items: pathBanners.map((map) => Image.asset(map)).toList(),
      options: CarouselOptions(
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 10),
      ),
    );
  }

  Text buildTitle({String title}) {
    return Text(
      title,
      style: MyStyle().h3Title(),
    );
  }
}
