import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:web_app_nish/login module/componants/CommonText.dart';

import 'package:web_app_nish/login%20module/screens/Weather_page.dart';
import 'package:web_app_nish/login%20module/screens/widget2.dart';
import 'package:web_app_nish/login%20module/componants/common_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myUser = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text(myUser.email!),),
      body: Center(
        child:Column(
          children: [
            Container(
              child: GestureDetector (
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return Weather_page();
                      }));
                },
                child: CommonButton(
                  buttonText: "Weather",
                ),
              ),
            ),
            Container(
              child: GestureDetector (
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return Widget2();
                      }));
                },
                child: CommonButton(
                  buttonText: "Calendar",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//
// child: CommonText(
// text: "Home Screen",
// fontWeight: FontWeight.bold,
// fontSize: 30,
// ),