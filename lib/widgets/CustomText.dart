import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key key,
      @required this.text,
      this.size,
      this.color,
      this.fontWeight,
      this.fontFamily})
      : super(key: key);
  final String text;
  final double size;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: size??16,
          fontWeight: fontWeight??FontWeight.normal,
          fontFamily: fontFamily??'Roboto'),
    );
  }
}
