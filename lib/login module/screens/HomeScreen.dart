import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:web_app_nish/login module/componants/CommonText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myUser = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("Your User Id: "+myUser.email!),
          actions: [
      IconButton(
      icon: Icon(Icons. logout),
      onPressed: () => FirebaseAuth.instance.signOut(),
    ),]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.cloud),label: "home"),
          BottomNavigationBarItem(icon:Icon(Icons.newspaper),label: "home2"),
          BottomNavigationBarItem(icon:Icon(Icons.line_axis),label: "home3"),
        ],
      ),
      body: Center(
        child: CommonText(
          text: "Home Screen",
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
