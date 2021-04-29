import 'package:flutter/material.dart';

void main() {
  runApp(RuchiApp());
}

class RuchiApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruchi App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Image.asset('assets/images/ruchi.png',
              fit: BoxFit.contain, height: 72),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Color(0xFF6E7FAA),
              ),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color(0xFF292929),
            ),
            onPressed: () {},
          ),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Text("Hello! I am in the container widget!!",
              style: TextStyle(fontSize: 25)),
        ),
      ),
    );
  }
}
