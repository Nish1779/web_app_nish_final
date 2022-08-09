import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';


class CommonTextFormField extends StatelessWidget {
  CommonTextFormField(
      {
        this.onTap,
        this.controller,
        this.hintText,
        this.width,
        this.maxLines=1,
        this.minLines=1,
        this.onChanged,
        this.validator,
        this.maxLength,
        this.verticalPadding=21,
        this.horizontalPadding=12,
      });
  double? width;
  String? hintText;
  //EdgeInsetsGeometry contentPadding;
  TextEditingController? controller;
  int? maxLines;
  int? minLines;
  double verticalPadding;
  int? maxLength;
  double horizontalPadding;
  String? Function(String?)? validator=(String? s){};
  void Function()? onTap = () {};
  void Function(String)? onChanged = (String s) {};

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ,
      child: TextFormField(
        validator: validator,
        onTap: onTap,
        onChanged: onChanged,
        controller: controller,
        maxLines: maxLines,
        minLines: minLines,
        cursorColor: Colors.black,
        maxLength: maxLength,
        decoration: InputDecoration(
          filled: true,
          hintText: '$hintText',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 15,),
          contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
          enabledBorder: OutlineInputBorder(

              borderSide: BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(4)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(4)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(4)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(4)),
        ),
        style: TextStyle(
            color: Colors.black,
            fontSize: 15,
        ),
      ),
    );
  }
}