// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:school_ui/videos/course1.dart';

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
          Container(
            width: 310,
            height: 530,
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
            margin: EdgeInsets.only(right: 7, top: 5),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                        image: AssetImage('assets/2.jpeg'), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Affrodance: Designing intutive',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  'user interface.',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'This  course  will  help  you have a deeper knowledge about',
                  style: TextStyle(color: Colors.grey),
                ),
                Text('affordance in Human Centered interaction.',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.grey)),
                SizedBox(height: 20),
                Text(
                  'Created by',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/IMG_0346.JPG'),
                      radius: 37,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tensionn Tensionn',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 5.0, left: 4.0),
                            child: Row(
                              children: [
                                Text(
                                  'App Developer',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(width: 20),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90.0),
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
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          fixedSize: Size(80, 40),
                                          textStyle: TextStyle(
                                            fontSize: 18,
                                          ),
                                          primary: Color.fromARGB(
                                              211, 244, 240, 240),
                                          onPrimary:
                                              Color.fromARGB(255, 47, 130, 127),

                                          shadowColor: Colors.grey,
                                          side: BorderSide(
                                              color: Colors.white, width: 2),
                                          shape: StadiumBorder(),
                                          //alignment: Alignment.center
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Content',
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
                Text(
                  'Reviews',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Assigments',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Course1(),
              SizedBox(height: 5),
              Course1(),
              SizedBox(height: 5),
              Course1(),
              SizedBox(height: 5),
              Course1(),
              SizedBox(height: 5),
              Course1(),
            ],
          ),
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
}
