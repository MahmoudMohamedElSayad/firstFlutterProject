import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> {
  bool pausee = false;
  int count = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var countList = [
      {"score": "1"},
      {"score": "2"},
      {"score": "3"},
      {"score": "4"},
      {"score": "5"},
      {"score": "6"},
      {"score": "7"},
      {"score": "8"},
    ];
    const String assetName = 'images/resume.svg';
    const String pause = 'images/reload.svg';
    const String arrow = 'images/arrowleft.svg';
    Widget cv = Icon(
      Icons.star,
      size: 20,
      color: Colors.white,
    );
    return Scaffold(
      backgroundColor: Color(0xFF18532C),
      body: SafeArea(
          child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
            color: Color(0xFF18532C),
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "arrowRight.svg",
                  color: Color(0xFFffffff),
                  height: 20,
                  width: 20,
                  fit: BoxFit.cover,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Text(
                          "$count",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'NotoSans'),
                        ),
                        Text(
                          " صفحة من 3",
                          style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 18,
                              color: Colors.white),
                        )
                      ],
                    )),
                GestureDetector(
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      SvgPicture.asset(
                        arrow,
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Color(0xFFF0384E),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1)),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      if (count < 3) {
                        count++;
                      } else {
                        Navigator.pushNamed(context, "ResultPage");
                      }
                    });
                  },
                )
              ],
            )),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light ,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Color(0xFF18532C),
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cv,
              Padding(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: Text(
                    "فيديوهات",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "NotoSans",
                        fontSize: 25),
                  )),
              cv,
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (pausee) {
                        pausee = false;
                      } else {
                        pausee = true;
                      }
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF18532C),
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      child: SvgPicture.asset(
                        pausee ? assetName : pause,
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1556740758-90de374c12ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")),
                            border:
                                Border.all(width: 1, color: Color(0xFFB8C7B9)),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Color(0xFF18532C)),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: ReadMoreText(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى   ',
                    trimLines: 2,
                    style: TextStyle(
                        fontFamily: "NotoSans",
                        fontSize: 20,
                        color: Color(0xff18532C),
                        height: 1.4),
                    colorClickableText: Color(0xff18532C),
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' قراءة المزيد',
                    trimExpandedText: 'قرائة أقل',
                    delimiterStyle: TextStyle(color: Colors.black),
                    lessStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: "NotoSans",
                        color: Color(0xff4F4F4F),
                        height: 1),
                    moreStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: "NotoSans",
                        color: Color(0xff4F4F4F),
                        height: 1),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: countList.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4, childAspectRatio: 1.2),
                          itemBuilder: (context, idex) {
                            return Container(
                              margin: EdgeInsets.only(left: 6, bottom: 6),
                              child: Card(
                                child: Stack(
                                  alignment: AlignmentDirectional.topEnd,
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFF0384E),
                                        radius: 5,
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 10, left: 10),
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            border: Border.all(
                                                color: Color(0xffA6D3AB),
                                                width: 3)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${countList[idex]["score"]}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF18532C),
                                              fontFamily: 'NotoSans'),
                                        ))
                                  ],
                                ),
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                            );
                          }),
                    )),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
