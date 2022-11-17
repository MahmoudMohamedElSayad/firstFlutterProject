import 'package:flutter/material.dart';

class MyNotesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateMyNotesPage();
  }
}

class StateMyNotesPage extends State<MyNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff2E6934),
        title: Text(
          "دفتري",
          style: TextStyle(
              fontSize: 18,
              fontFamily: "NotoSans",
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}
