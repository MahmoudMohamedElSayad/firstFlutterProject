import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LevelsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateLevelsPage();
  }
}

class StateLevelsPage extends State<LevelsPage> {
  var imageLevel = [
    {
      "name": "المستوى الأول",
      "number": "15 مادة",
      "image": "images/number1.svg"
    },
    {
      "name": "المستوى الثاني",
      "number": "30 مادة",
      "image": "images/number2.svg"
    },
    {
      "name": "المستوى الثالث",
      "number": "30 مادة",
      "image": "images/number3.svg"
    },
    {
      "name": "المستوى الرابع",
      "number": "15 مادة",
      "image": "images/number4.svg"
    },
    {
      "name": "المستوى الخامس",
      "number": "15 مادة",
      "image": "images/number5.svg"
    },
    {
      "name": "المستوى السادس",
      "number": "15 مادة",
      "image": "images/number6.svg"
    },
    {
      "name": "المستوى السابع",
      "number": "15 مادة",
      "image": "images/seven.svg"
    },
    {
      "name": "المستوى الثامن",
      "number": "15 مادة",
      "image": "images/eight.svg"
    },
    {"name": "المستوى التاسع", "number": "15 مادة", "image": "images/nine.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(
                          "images/logo.svg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"))),
                            height: 40,
                            width: 40,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "فهد خالد العتيبي",
                              style: TextStyle(
                                  fontFamily: "NotoSans",
                                  fontSize: 15,
                                  color: Color(0xff2E6934)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: imageLevel.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      itemBuilder: (context, idex) {
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff2E6934),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15))),
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: SvgPicture.asset(
                                              "${imageLevel[idex]["image"]}",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              "${imageLevel[idex]["name"]}",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: "NotoSans",
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 0),
                                            child: Text(
                                              "${imageLevel[idex]["number"]}",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: "NotoSans",
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                      ),
                                    ),
                                    idex == 1
                                        ? Visibility(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle),
                                              height: 15,
                                              width: 15,
                                              margin: EdgeInsets.only(
                                                  top: 10, left: 10),
                                            ),
                                            visible: true,
                                          )
                                        : Visibility(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle),
                                              height: 15,
                                              width: 15,
                                              margin: EdgeInsets.only(
                                                  top: 10, left: 10),
                                            ),
                                            visible: false,
                                          )
                                  ],
                                  alignment: Alignment.topLeft,
                                ),
                                flex: 3,
                              ),
                              Expanded(
                                child: idex == 0
                                    ? Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff18532C)),
                                              height: 15,
                                              width: 15,
                                              alignment: Alignment.center,
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              child: Icon(Icons.check_sharp,
                                                  color: Colors.white,
                                                  size: 10),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 5),
                                              child: Text(
                                                "تم اجتياز المستوى بنجاح",
                                                style: TextStyle(
                                                    fontFamily: "NotoSans",
                                                    fontSize: 13,
                                                    color: Color(0xff2B362C)),
                                              ),
                                            ),
                                          ],
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                        ),
                                        width: double.infinity,
                                        alignment: Alignment.center,
                                      )
                                    : Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15)),
                                            color: Color(0xffCAE8CD)),
                                        child: Text(
                                          "متاح",
                                          style: TextStyle(
                                              fontFamily: "NotoSans",
                                              fontSize: 13,
                                              color: Color(0xff2B362C)),
                                        ),
                                        width: double.infinity,
                                        alignment: Alignment.center,
                                      ),
                                flex: 1,
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
