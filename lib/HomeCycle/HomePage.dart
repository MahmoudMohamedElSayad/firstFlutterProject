import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:untitled/HomeCycle/LevelsPage.dart';
import 'package:untitled/HomeCycle/MyNotesPage.dart';
import 'package:untitled/HomeCycle/MyProfilePage.dart';
import 'package:untitled/HomeCycle/RatePage.dart';
class HomePages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateHomePage();
  }
}

class StateHomePage extends State<HomePages> {
  var currentIndex=0;
  List<Widget>widgetPages=[
    LevelsPage(),
    MyNotesPage(),
    RatePage(),
    MyProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) {
          setState(() {
            currentIndex = i;
          });
        },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                'images/lessonsdisactive.svg',
              ),
            ),
            title: Text("المستويات"),
            selectedColor: Color(0xff2E6934),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                'images/lessonsactive.svg',
              ),
            ),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                'images/notebookdisactive.svg',
              ),
            ),
            title: Text("دفتري"),
            selectedColor: Color(0xff2E6934),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                'images/notebookactive.svg',
              ),
            ),
          ),
          SalomonBottomBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                'images/statistical.svg',
              ),
            ),
            title: Text("المعدل"),
            selectedColor: Color(0xff2E6934),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                'images/statisticalactive.svg',
              ),
            ),
          ),
          SalomonBottomBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                'images/usernadisavtive.svg',
              ),
            ),
            title: Text("الحساب"),
            selectedColor: Color(0xff2E6934),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset(
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                'images/user.svg',
              ),
            ),
          ),
        ],
      ),
      body: widgetPages.elementAt(currentIndex),

    );
  }
}
