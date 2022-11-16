import 'dart:math';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateSliderPage();
  }
}

class StateSliderPage extends State<SliderPage> {
  var sliderSaveValue = 0.0;
  late ScrollController scrol;

  @override
  void initState() {
    scrol = ScrollController();
    scrol.addListener(() {
      print(scrol.offset);
      print("max scroll${scrol.position.maxScrollExtent}");
      print("min scroll${scrol.position.minScrollExtent}");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrol,
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      elevation: 5,
                      context: context,
                      builder: (context) => Container(
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: GestureDetector(
                                child: Text(
                                  "الذهاب إلي أسفل",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                onTap: () {
                                  if (scrol.offset ==
                                      scrol.position.minScrollExtent) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                            content: Container(
                                      child: Text(
                                        "أنت بالفعل في الأسفل",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    )));
                                  } else {
                                    scrol.animateTo(
                                        scrol.position.minScrollExtent,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.easeIn);
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: GestureDetector(
                                child: Text(
                                  "الذهاب إلي  أعلي",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                onTap: () {
                                  if (scrol.offset ==
                                      scrol.position.minScrollExtent) {
                                    scrol.animateTo(
                                        scrol.position.maxScrollExtent,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.easeIn);
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                            content: Container(
                                      child: Text(
                                        "أنت بالفعل في الأعلي",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.red),
                                      ),
                                    )));
                                  }
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      "التحكم في الحركة",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Slider(
                      label: "$sliderSaveValue",
                      divisions: 5,
                      // the step move when move the slider in app
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                      min: 0,
                      max: 100,
                      value: sliderSaveValue,
                      onChanged: (value) {
                        setState(() {
                          sliderSaveValue = value;
                        });
                      }),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return index % 2 == 0
                              ? Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 15),
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Text(
                                    "$index",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ))
                              : Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 15),
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Text(
                                    "$index",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ));
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
