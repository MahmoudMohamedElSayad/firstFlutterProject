import 'package:flutter/material.dart';

class RatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return StateRatePage();
  }
}

class StateRatePage extends State<RatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading:false,
        title: Text(
          "المعدل",
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
