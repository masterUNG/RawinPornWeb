import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rawinpornweb/utility/my_style.dart';

class ShowContent extends StatelessWidget {
  List<String> pathBanners = [
    'images/banner1.png',
    'images/banner2.png',
    'images/banner1.png'
  ];

  ElevatedButton elevatedButton() {
    return ElevatedButton(
        onPressed: () {
          print('You Click Button');
        },
        child: Text('Click Me'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitle(title: 'Promotion Today !!!'),
        buildCarouselSlider(),
        buildTitle(title: 'Catigory !!!'),
      ],
    );
  }

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
