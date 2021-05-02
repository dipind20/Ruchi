import 'package:flutter/material.dart';
import './homepage.dart';

void main() {
  runApp(RuchiApp());
}

class RuchiApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruchi App',
      theme: ThemeData(fontFamily: 'Montserrat'),
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
              padding: const EdgeInsets.only(
                  left: 35.0, right: 35.0, top: 20, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xFFFFFFFF).withOpacity(0.2),
                    filled: true,
                    prefixIcon: Icon(Icons.email, color: Color(0xFFFF5543)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(36)),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    hintText: 'Enter Your Email',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 35.0, right: 35.0, top: 10, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Color(0xFFFFFFFF).withOpacity(0.2),
                    filled: true,
                    prefixIcon: Icon(Icons.lock, color: Color(0xFFFF5543)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(36)),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    hintText: 'Enter Your Password',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text('Forgot Password?',
                    style: TextStyle(
                        color: Color(0xFFF98A60),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.right)),
            Padding(
              padding: const EdgeInsets.only(
                  left: 35.0, right: 35.0, top: 30, bottom: 0),
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color(0xFFA74237),
                    borderRadius: BorderRadius.circular(36)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text('Do not have an account?',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Text('REGISTER HERE!',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
