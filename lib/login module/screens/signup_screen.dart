import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:web_app_nish/login%20module/screens/login_screens.dart';

import '../../main.dart';
import '../componants/CommonText.dart';
import '../componants/commonTextFormField.dart';
import '../componants/common_button.dart';
import 'HomeScreen.dart';


class SignUpScreen extends StatefulWidget {

  const SignUpScreen({Key? key, required void Function() onClickedSignIn}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
              CommonText(text: "Sign Up",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center),
              SizedBox(height: 20,),
              CommonText(text: "Name:",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.start),
              SizedBox(height: 5,),
              CommonTextFormField(
                hintText: "Enter Your Name", controller: emailController,),
              SizedBox(height: 25,),
              CommonText(text: "Password :",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.start),
              SizedBox(height: 5,),
              CommonTextFormField(
                hintText: "Enter Password", controller: passwordController,),
              SizedBox(height: 25,),
            GestureDetector(
                onTap: () async {
                  await signup();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen(onClickedSignUp: () {  },);
                      }));
                },
                child: CommonButton(
                  buttonText: "Sign Up",
                )),
            SizedBox(
              height: 10,
            ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return LoginScreen(onClickedSignUp: () {  },);
                        }));
                  },
                  child: Text(
                    "Have An Account? Login",
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 15),
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ),
      ),
    );
   }
  Future signup() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}