import 'package:flutter/material.dart';

import './main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ruchibg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/ruchi.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(36)),
                    labelText: 'Email',
                    hintText: 'Enter Your Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(36)),
                    labelText: 'Password',
                    hintText: 'Enter Your assword'),
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text('Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                  textAlign: TextAlign.right),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 30, bottom: 0),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: const Color(0xFFA74237),
                    borderRadius: BorderRadius.circular(36)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MyAppp()));
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text('Do not have an account? REGISTER HERE!')
          ],
        ),
      ),
    );
  }
}
