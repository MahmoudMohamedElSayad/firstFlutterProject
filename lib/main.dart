import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled/HomeCycle/HomePage.dart';
import 'package:untitled/SliderPage.dart';
import 'package:untitled/UserCycles/LoginPage.dart';
import 'package:untitled/UserCycles/SignUpPage.dart';

import 'HomeCycle/MyNotesPage.dart';
import 'ResultPage.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: buildMaterialColor(Color(0xff2E6934)),
        focusColor: Colors.green,
        appBarTheme: AppBarTheme(
            systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff18532C),
          statusBarIconBrightness: Brightness.light,
        )),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "EN"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "EN"),
      home: LoginPage(),
      routes: {
        "LoginPage": (context) => LoginPage(),
        "SignUpPage": (context) => SignUpPage(),
        "ResultPage": (context) {
          return ResultPage();
        },

        "homePage": (context) => HomePages(),
        "MyNotesPage":(context)=>MyNotesPage()
      },
    );
  }
}
