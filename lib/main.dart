import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text("hello"),
            titleTextStyle: const TextStyle(color: Colors.blue),
            centerTitle: true),
        drawer: const Drawer(),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.red, width: 1)),
                  child: Container(
                    height: 500,
                    child: Column(
                      children: [
                        Container(
                          width: 500,
                          height: 100,
                          padding: EdgeInsets.only(top: 20),
                          child: const Text(
                            "بسم الله الرحمن الرحيم",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.red,
                                      offset: Offset(0, 10),
                                      blurRadius: 30)
                                ]),
                          ),
                        ),
                        Container(
                          width: 500,
                          height: 100,
                          padding: EdgeInsets.only(top: 20),
                          child: const Text(
                            "بسم الله الرحمن الرحيم",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.red,
                                      offset: Offset(0, 10),
                                      blurRadius: 30)
                                ]),
                          ),
                        ),
                        Container(
                          width: 500,
                          height: 100,
                          padding: EdgeInsets.only(top: 20),
                          child: const Text(
                            "بسم الله الرحمن الرحيم",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.red,
                                      offset: Offset(0, 10),
                                      blurRadius: 30)
                                ]),
                          ),
                        ),
                        Container(
                          width: 500,
                          height: 100,
                          padding: EdgeInsets.only(top: 20),
                          child: const Text(
                            "بسم الله الرحمن الرحيم",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.red,
                                      offset: Offset(0, 10),
                                      blurRadius: 30)
                                ]),
                          ),
                        ),
                        Container(
                          width: 500,
                          height: 100,
                          padding: EdgeInsets.only(top: 20),
                          child: const Text(
                            "بسم الله الرحمن الرحيم",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.red,
                                      offset: Offset(0, 10),
                                      blurRadius: 30)
                                ]),
                          ),
                        )
                      ],
                    ),
                  )),
              Card(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.red, width: 1)),
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 200,
                        padding: EdgeInsets.only(top: 20),
                        child: const Text(
                          "بسم الله الرحمن الرحيم",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              shadows: <Shadow>[
                                Shadow(
                                    color: Colors.red,
                                    offset: Offset(0, 10),
                                    blurRadius: 30)
                              ]),
                        ),
                      ),
                      Container(
                        width: 500,
                        height: 200,
                        padding: EdgeInsets.only(top: 10),
                        child: const Text(
                          "بسم الله الرحمن الرحيم",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              shadows: <Shadow>[
                                Shadow(
                                    color: Colors.red,
                                    offset: Offset(0, 10),
                                    blurRadius: 30)
                              ]),
                        ),
                      )
                    ],
                  )),
              Card(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.red, width: 1)),
                  child: Container(
                    width: 500,
                    height: 200,
                    padding: EdgeInsets.only(top: 20),
                    child: const Text(
                      "بسم الله الرحمن الرحيم",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          shadows: <Shadow>[
                            Shadow(
                                color: Colors.red,
                                offset: Offset(0, 10),
                                blurRadius: 30)
                          ]),
                    ),
                  )),
              Card(
                  margin:
                      EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.red, width: 1)),
                  child: Container(
                    width: 500,
                    height: 200,
                    padding: EdgeInsets.only(top: 20),
                    child: const Text(
                      "بسم الله الرحمن الرحيم",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          shadows: <Shadow>[
                            Shadow(
                                color: Colors.red,
                                offset: Offset(0, 10),
                                blurRadius: 30)
                          ]),
                    ),
                  )),
            ],
          ),
        )));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: const Text("login"),
    );
  }
}
