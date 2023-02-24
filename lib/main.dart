// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:school_ui/videos/course1.dart';
import 'package:school_ui/videos/course2.dart';
import 'package:school_ui/videos/design1.dart';
import 'package:school_ui/videos/design2.dart';
import 'package:school_ui/videos/design3.dart';
import 'package:school_ui/videos/view1.dart';
import 'package:school_ui/videos/view2.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(brightness: Brightness.light),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: ListView(
        children: [
          SizedBox(
            height: 36,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(width: 180),
                      Text(
                        'View all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Design1(),
                  SizedBox(width: 5),
                  Designss3(),
                  SizedBox(width: 5),
                  Designss2(),
                  SizedBox(width: 5),
                  Design1(),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                View1(),
                SizedBox(height: 10),
                View2(),
                SizedBox(height: 10),
                View1(),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended for you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
                SizedBox(width: 100),
                Text(
                  'View all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Course1(),
              SizedBox(height: 5),
              Course2(),
              SizedBox(height: 5),
              Course1(),
              SizedBox(height: 5),
              Course1(),
              SizedBox(height: 8),
            ],
          )
        ],
      ),
      bottomNavigationBar: GNav(
        color: Colors.white,
        activeColor: Colors.black,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        backgroundColor: Color.fromARGB(72, 158, 158, 158),
        padding: EdgeInsets.all(20.0),
        rippleColor: Colors.red,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
          GButton(
            icon: Icons.play_circle,
            text: 'Courses',
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Favorite',
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
        ],
      ),
    );
  }

  PreferredSize _appbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: Container(
        decoration: _boxDecoration(),
        child: Column(
          children: [
            _topBar(),
            SizedBox(height: 5),
            _searchBox(),
            //_tapBar(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.vertical(),
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 0, 0, 0),
          Color.fromARGB(255, 47, 130, 127),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }

  Widget _topBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage("assets/11.JPG"),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(width: 210),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.shopping_cart_rounded,
                            color: Color.fromARGB(255, 47, 130, 127),
                          ),
                        ),
                        Divider(indent: 10),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.notification_add,
                            color: Color.fromARGB(255, 47, 130, 127),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Hello Lady',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Lets start Learning',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchBox() {
    return SizedBox(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            hintText: 'Search Courses...',
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(Icons.search_off_outlined),
            suffixIcon: Icon(
              Icons.mic_outlined,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
