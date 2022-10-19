import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                alignment: Alignment.topRight,
                child: Text(
                  "المتاجر",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/images.jpg"),
                                fit: BoxFit.fill),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/images.jpg"),
                                fit: BoxFit.fill),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/images.jpg"),
                                fit: BoxFit.fill),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/images.jpg"),
                                fit: BoxFit.fill),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
