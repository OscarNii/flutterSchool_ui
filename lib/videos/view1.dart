// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_ui/videos/nextpage1.dart';
import 'package:animate_do/animate_do.dart';
import 'package:school_ui/videos/nextpage2.dart';
import 'package:school_ui/videos/swipe.dart';

class View1 extends StatelessWidget {
  const View1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 440,
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      margin: EdgeInsets.only(right: 7, top: 5),
      decoration: BoxDecoration(
          color: Color.fromARGB(233, 247, 196, 237),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(126, 0, 0, 0),
              Colors.black,
            ],
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInUp(
            child: Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                    image: AssetImage('assets/college.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ElevatedButton(
                      child: Row(
                        children: [
                          Text(
                            ' 10 Videos',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
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
                        foregroundColor: Color.fromARGB(255, 47, 130, 127),
                        backgroundColor: Color.fromARGB(211, 244, 240, 240),
                        padding: EdgeInsets.all(15.0),
                        fixedSize: Size(130, 50),
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),

                        shadowColor: Colors.grey,
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: StadiumBorder(),
                        //alignment: Alignment.center
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Affordance: Designing intuitive',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Text(
            'user interface.',
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
            children: [
              Text(
                NumberFormat.simpleCurrency(locale: 'en-us', decimalDigits: 2)
                    .format(150.00),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 15),
              Text(
                NumberFormat.simpleCurrency(locale: 'en-us', decimalDigits: 2)
                    .format(150.00),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
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
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        fixedSize: Size(80, 40),
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                        backgroundColor: Colors.white,

                        shadowColor: Colors.white,
                        side: BorderSide(
                            color: Color.fromARGB(255, 47, 130, 127), width: 2),
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
    );
  }
}
