import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

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
            backgroundColor: Colors.white,
            title: const Text(
              "الصفحة الرئيسية",
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(0, 10),
                        blurRadius: 20),
                  ]),
            ),
            titleTextStyle: const TextStyle(color: Colors.blue),
            centerTitle: true),
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  margin: const EdgeInsets.only(top: 20, right: 8, left: 8),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black, width: 1)),
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 100,
                        padding: const EdgeInsets.only(top: 20),
                        child: const Text(
                          "عمل حساب جديد",
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
                        margin:
                            const EdgeInsets.only(top: 5, right: 8, left: 8),
                        child: TextField(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          maxLength: 50,
                          maxLines: 1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Full Name',
                              focusColor: Colors.black),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 2, right: 8, left: 8),
                        child: TextField(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          maxLength: 50,
                          maxLines: 1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Last Name',
                              focusColor: Colors.black),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 2, right: 8, left: 8),
                        child: TextField(
                          maxLength: 50,
                          maxLines: 1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Password',
                              focusColor: Colors.black),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 2, right: 8, left: 8, bottom: 20),
                        child: TextField(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          maxLength: 50,
                          maxLines: 1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Confirm Password',
                              focusColor: Colors.black),
                        ),
                      ),
                    ],
                  )),
              Card(
                  margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.red, width: 1)),
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 200,
                        padding: const EdgeInsets.only(top: 20),
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
                        padding: const EdgeInsets.only(top: 10),
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
                  margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.red, width: 1)),
                  child: Container(
                    width: 500,
                    height: 200,
                    padding: const EdgeInsets.only(top: 20),
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
                  margin: const EdgeInsets.only(
                      top: 20, right: 20, left: 20, bottom: 20),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.red, width: 1)),
                  child: Container(
                    width: 500,
                    height: 200,
                    padding: const EdgeInsets.only(top: 20),
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
        ));
  }
}
