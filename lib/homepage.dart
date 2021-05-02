import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xFFA74237),
          items: [
            TabItem(icon: Icons.home),
            TabItem(icon: Icons.restaurant_menu),
            TabItem(icon: Icons.location_on),
            TabItem(icon: Icons.article),
            TabItem(icon: Icons.shopping_cart),
          ],
          initialActiveIndex: 2, //optional, default as 0
          onTap: (int i) => print('click index=$i'),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
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
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                accountName: Text("Ezio Auditore",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold)),
                accountEmail: Text("ezio@gmail.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Montserrat')),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/ezio.jpg'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.store),
                title: Text('Discover'),
              ),
              ListTile(
                leading: Icon(Icons.local_offer),
                title: Text('Offers'),
              ),
              ListTile(
                leading: Icon(Icons.article),
                title: Text('My Orders'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/food.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const SizedBox(
                          width: 190,
                          height: 200,
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Text("FOOD ITEMS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/food.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const SizedBox(
                          width: 190,
                          height: 200,
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Text(
                              "FOOD ITEMS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("assets/images/food.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const SizedBox(
                          width: 190,
                          height: 200,
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Text(
                              "FOOD ITEMS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
