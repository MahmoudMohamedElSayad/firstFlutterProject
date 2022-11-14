import 'dart:io';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateLoginPage();
  }
}

class StateLoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "تسجيل الدخول ",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
      ),
      body: Form(
        key: formState,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/images.jpg"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    onSaved: (userName) {},
                    validator: (userName) {
                      if (userName != null) {
                        if (userName.isEmpty) {
                          return "من فضلك قم بإدخال الإسم بالكامل";
                        }
                        if (userName.length < 4) {
                          return "طول الإسم لابد أن يكون أكبر من 4";
                        }
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        label: Text(
                          "الإيميل او إسم المستخدم",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    obscureText: true,
                    onSaved: (userName) {},
                    validator: (password) {
                      if (password != null) {
                        if (password.isEmpty) {
                          return "من فضلك قم بإدخال رقم المرور";
                        }
                        if (password.length < 8) {
                          return "الرقم السرى لابد أن يكون أكبر من 8";
                        }
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        label: Text(
                          "كلمة المرور الخاصة بك",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "هل نسيت كلمة المرور ؟",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.deepOrange),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: InkWell(
                    onTap: () {
                      var formateData = formState.currentState;
                      if (formateData != null) {
                        if (formateData.validate()) {}
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          right: 60, left: 60, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "هل لديك حساب ؟",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.grey),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,"signUp");
                          },
                          child: Text(
                            "إنشاء حساب جديد",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
