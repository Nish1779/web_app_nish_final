import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  String buttonText="";

  CommonButton({this.buttonText=""});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        //color: isAcceptedTerms ? Styles.red : Styles.red.withOpacity(0.8),
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
