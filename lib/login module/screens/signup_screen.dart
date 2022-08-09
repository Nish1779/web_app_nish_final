import 'package:flutter/material.dart';

import '../componants/CommonText.dart';
import '../componants/commonTextFormField.dart';
import '../componants/common_button.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10,),
              CommonText(text: "Sign Up",fontSize: 40,fontWeight: FontWeight.bold,textAlign: TextAlign.center),
              SizedBox(height: 20,),
              CommonText(text: "Name:",fontSize: 16,fontWeight: FontWeight.normal,textAlign: TextAlign.start),
              SizedBox(height: 5,),
              CommonTextFormField(hintText: "Enter Your Name",),
              SizedBox(height: 25,),
              CommonText(text: "Password :",fontSize: 16,fontWeight: FontWeight.normal,textAlign: TextAlign.start),
              SizedBox(height: 5,),
              CommonTextFormField(hintText: "Enter Password",),
              SizedBox(height: 25,),
              CommonButton(buttonText: "Sign Up",),
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text("Have An Account? Login",style: TextStyle(decoration: TextDecoration.underline,fontSize: 15), textAlign: TextAlign.center,))
            ],
          ),
        ),
      ),
    );
  }
}

