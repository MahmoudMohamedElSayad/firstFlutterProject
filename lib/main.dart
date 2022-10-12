import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(backgroundColor: Colors.red),
        drawer: const Drawer(),
        body: Container(
          margin: const EdgeInsets.fromLTRB(100, 20, 50, 10),
          padding: const EdgeInsets.fromLTRB(100, 50, 71, 20),
          width: 500,
          height: 200,
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqs0biBOHTjxj0u0RUOc-GFEqyoWTAVexJfwMYxnQGjQitaNJqOuP_AOfRA9xNwv3S7L4&usqp=CAU"),
                fit: BoxFit.fill,
              ),
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(10), left: Radius.circular(10))),
          child: const Text(
            "How are You",
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                      blurRadius: 10.0)
                ]),
          ),
        ));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: const Text("login"),
    );
  }
}
