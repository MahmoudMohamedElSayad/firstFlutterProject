import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            child: Text(
              "إنشاء حساب جديد",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: InputDecoration(
                      label: Text("أدخل الإسم بالكامل"),
                      labelStyle: TextStyle(color: Colors.red, fontSize: 18),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.grey, width: 1)),
                      prefixIcon: Icon(Icons.add),
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ),
              InkWell(
                onTap: () => print("ddddddddddddd"),
                child: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  padding:
                      EdgeInsets.only(right: 20, left: 20, bottom: 2, top: 2),
                  child: const Text(
                    "إنشاء الحساب",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
