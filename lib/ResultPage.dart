import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateResultPage();
  }
}

class StateResultPage extends State<ResultPage> {
  var topictList = [
    {"name": "المفردات"},
    {"name": "القواعد"},
    {"name": "السمع"},
    {"name": "الكتابة"},
  ];
  var scoretList = [
    {"score": "2%"},
    {"score": "3%"},
    {"score": "5%"},
    {"score": "1%"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF18532C),
      body: SafeArea(
        child: Scaffold(
            body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              SizedBox(
                                  height: 200,
                                  child: OverflowBox(
                                      minHeight: 200,
                                      maxHeight: 500,
                                      child: Lottie.asset(
                                          'assets/congrats.json',
                                          repeat: true,
                                          reverse: false,
                                          animate: true,
                                          fit: BoxFit.fill))),
                              SizedBox(
                                  height: 200,
                                  child: OverflowBox(
                                    minHeight: 200,
                                    maxHeight: 500,
                                    child: Lottie.asset(
                                      'assets/smail.json',
                                      fit: BoxFit.fill,
                                      repeat: true,
                                      reverse: false,
                                      animate: true,
                                    ),
                                  )),
                            ],
                          ),
                          Text(
                            "أحسنت لقد أتممت الإختبار",
                            style: TextStyle(
                                fontFamily: 'NotoSans',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF18532C)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: CircularPercentIndicator(
                              circularStrokeCap: CircularStrokeCap.round,
                              radius: 70.0,
                              lineWidth: 15,
                              backgroundColor: Color(0xff87A692),
                              percent: .80,
                              center: new Text(
                                "80%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'NotoSans',
                                    fontSize: 25),
                              ),
                              progressColor: Color(0xff18532C),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF347406),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.done,
                                          size: 20,
                                          color: Colors.white,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "الإجابات الصحيحة:",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff4F4F4F),
                                          fontFamily: "NotoSans",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "16",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff424242),
                                          fontFamily: "NotoSans",
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFDD4052),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.close,
                                          size: 20,
                                          color: Colors.white,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "الإجابات الخاطئة:",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff4F4F4F),
                                          fontFamily: "NotoSans",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "4",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff424242),
                                          fontFamily: "NotoSans",
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child:
                               Text("معدلك تغير بقيمة :",style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'NotoSans',
                                  fontWeight: FontWeight.bold)),)


                            ),

                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: GridView.builder(
                                shrinkWrap: true,
                                itemCount: topictList.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisSpacing: 5, crossAxisCount: 4),
                                itemBuilder: (context, idex) {
                                  return Card(
                                    color: Colors.white,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${topictList[idex]["name"]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            fontFamily: 'NotoSans',
                                          ),
                                        ),
                                        Text(
                                          "${scoretList[idex]["score"]} +",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Color(0xff347406),
                                            fontFamily: 'NotoSans',
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Padding(padding: EdgeInsets.only(top: 40),child: GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xff18532C),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                              child: Text(
                                "المتابعة",
                                style: TextStyle(
                                    fontFamily: "NotoSans",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),)

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
