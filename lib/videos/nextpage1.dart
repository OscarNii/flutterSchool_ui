// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, constant_identifier_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';
import 'package:school_ui/main.dart';
import 'package:school_ui/videos/course1.dart';
import 'package:school_ui/videos/course2.dart';
import 'package:school_ui/videos/nextpage2.dart';
import 'package:school_ui/videos/swipe.dart';
import 'package:swipe_deck/swipe_deck.dart';

const IMAGES = ["andriod", "flutter", "js", "phyton", "swift"];

class Nextpage1 extends StatefulWidget {
  const Nextpage1({Key? key}) : super(key: key);

  @override
  State<Nextpage1> createState() => _Nextpage1State();
}

class _Nextpage1State extends State<Nextpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourite Videos',
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.favorite_outlined,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                    SizedBox(width: 190),
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
          Column(
            children: [
              Center(
                child: Container(
                  width: 390,
                  height: 610,
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  margin: EdgeInsets.only(right: 1, top: 5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(219, 255, 255, 255),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(81, 0, 0, 0),
                        Colors.black,
                      ]),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        child: Center(
                          child: SizedBox(
                            height: 420,
                            width: 360,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Center(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 70.0),
                                    child: Tutorials(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: ElevatedButton(
                                    child: Text(
                                      ' 10 Video',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Nextpage1(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor:
                                          Color.fromARGB(255, 47, 130, 127),
                                      backgroundColor:
                                          Color.fromARGB(211, 244, 240, 240),
                                      padding: EdgeInsets.all(15.0),
                                      fixedSize: Size(130, 50),
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                      ),

                                      shadowColor: Colors.grey,
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      shape: StadiumBorder(),
                                      //alignment: Alignment.center
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Affordance: Programming Languages that',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        'intuitive newbies about the languages.',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/OIP.jpg'),
                            radius: 27,
                          ),
                          Text(
                            'Created by Belmont Owen',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Price',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19),
                              ),
                              SizedBox(width: 10),
                              Text(
                                NumberFormat.simpleCurrency(
                                        locale: 'en-us', decimalDigits: 2)
                                    .format(150.00),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Stack(
                              children: [
                                ElevatedButton(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        '4.2',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    fixedSize: Size(80, 40),
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                    ),
                                    backgroundColor: Colors.white,

                                    shadowColor: Colors.white,
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 47, 130, 127),
                                        width: 2),
                                    shape: StadiumBorder(),
                                    //alignment: Alignment.center
                                  ),
                                )
                              ],
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended for you',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(width: 100),
                    Text(
                      'View all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 13),
                    ),
                    Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
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
}

class Tutorials extends StatelessWidget {
  const Tutorials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwipeDeck(
      aspectRatio: 1.7,
      widgets: IMAGES
          .map((e) => Image.asset(
                "assets/$e.jpeg",
                fit: BoxFit.fill,
              ))
          .toList(),
    );
  }
}
