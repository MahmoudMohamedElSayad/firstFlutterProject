
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled/LoginPage.dart';
import 'package:untitled/SignUpPage.dart';

import 'ResultPage.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:AppBarTheme(systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff2E6934),
          statusBarIconBrightness: Brightness.light,
        )) ,),
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
        "loginPage": (context) {
          return LoginPage();
        },
        "signUp": (context) {
          return SignUpPage();
        },"ResultPage":(context){
          return ResultPage();
        }
      },
    );
  }
}
