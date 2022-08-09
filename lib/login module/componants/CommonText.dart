import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CommonText extends StatelessWidget {
  String text;
  double fontSize;
  Color color;
  FontWeight fontWeight;
  TextAlign? textAlign;

  CommonText({required this.text,this.fontSize=12,this.color=Colors.black,this.textAlign=TextAlign.center,this.fontWeight=FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign!,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
      ),
    );
  }
}
