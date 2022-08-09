import 'package:flutter/material.dart';
import 'package:web_app_nish/login module/componants/CommonText.dart';
import 'package:web_app_nish/login module/componants/commonTextFormField.dart';
import 'package:web_app_nish/login module/componants/common_button.dart';
// import 'package:web_app_nish/login module/screens/HomeScreen.dart';
import 'package:web_app_nish/login module/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:web_app_nish/login%20module/screens/HomeScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose(){
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
              CommonText(text: "Login",fontSize: 40,fontWeight: FontWeight.bold,textAlign: TextAlign.center),
              SizedBox(height: 20,),
              CommonText(text: "Name/User ID :",fontSize: 16,fontWeight: FontWeight.normal,textAlign: TextAlign.start),
              SizedBox(height: 5,),
              CommonTextFormField(hintText: "Enter Your Email",controller: emailController,),
              SizedBox(height: 25,),
              CommonText(text: "Password :",fontSize: 16,fontWeight: FontWeight.normal,textAlign: TextAlign.start),
              SizedBox(height: 5,),
              CommonTextFormField(hintText: "Enter Password",controller: passwordController,),
              SizedBox(height: 25,),
              GestureDetector(
                  onTap: ()async{
                          await signin();
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    }));
                  },
                  child: CommonButton(buttonText: "Login",)),
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SignUpScreen();
                    }));
                  },
                  child: Text("New user? Sign up",style: TextStyle(decoration: TextDecoration.underline,fontSize: 15), textAlign: TextAlign.center,))
            ],
          ),

        ),
      ),
    );
  }
  Future signin() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password:   passwordController.text.trim());
    }
}

