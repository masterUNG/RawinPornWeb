import 'package:flutter/material.dart';

class ShowAppName extends StatelessWidget {
  final TextStyle textStyle;
  final String title;

  ShowAppName({@required this.textStyle, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: textStyle,
        ),
        Text('จงอย่าคิด ที่จะเดิน จงเดินเลย'),
      ],
    );
  }
}
