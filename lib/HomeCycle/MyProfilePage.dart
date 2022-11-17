import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateMyProfilePage();
  }
}

class StateMyProfilePage extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading:false,
        title: Text(
          "الحساب",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "NotoSans",
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
