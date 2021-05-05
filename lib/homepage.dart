import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
          child: Column(
            children: [
              Container(
                  child: Column(
                children: [
                  SizedBox(height: 15.0),
                  CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/food1.jpg'),
                                  fit: BoxFit.cover)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Italian Chicken Steak',
                                style: TextStyle(
                                  backgroundColor: Colors.blue,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/food2.jpg'),
                                  fit: BoxFit.cover)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Spanish Cuisines',
                                style: TextStyle(
                                  backgroundColor: Colors.blue,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/food3.jpg'),
                                  fit: BoxFit.cover)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Mac Specials',
                                style: TextStyle(
                                  backgroundColor: Colors.blue,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 180,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF).withOpacity(0.2),
                        filled: true,
                        prefixIcon:
                            Icon(Icons.search, color: Color(0xFFFF5543)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(36)),
                        labelText: 'Search',
                        labelStyle: TextStyle(
                            color: Color(0xFF767676),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                child: Container(
                  color: Color(0xFFFCEDBB),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/breakfast.png"),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              child: const SizedBox(
                                width: 110,
                                height: 103,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text("Breakfast",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF767676),
                                          fontSize: 12,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/lunch.png"),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              child: const SizedBox(
                                width: 110,
                                height: 103,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Lunch",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF767676),
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500),
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
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/dinner.png"),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              child: const SizedBox(
                                width: 110,
                                height: 103,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Dinner",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF767676),
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500),
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
            ],
          ),
        ),
      ),
    );
  }
}
