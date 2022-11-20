import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
        backgroundColor: Color(0xff18532C),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "المعدل",
          style: TextStyle(
              fontSize: 18,
              fontFamily: "NotoSans",
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Color(0xff18532C),
                ),
                height: double.infinity,
                width: double.infinity,
                child: SvgPicture.asset(
                  "images/patterntwo.svg",
                  fit: BoxFit.fill,
                )),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "معدلي",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "NotoSans",
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: CircularPercentIndicator(
                      radius: 70,
                      lineWidth: 7,
                      percent: 0.60,
                      center: new Text("60%"),
                      progressColor: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
