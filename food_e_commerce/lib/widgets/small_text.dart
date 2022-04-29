import 'package:flutter/material.dart';

class SmallTextWidget extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;

  SmallTextWidget({
    Key? key,
    this.color,
    required this.text,
    this.size = 12,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size, color: color, fontFamily: 'Roboto', height: height),
    );
  }
}
