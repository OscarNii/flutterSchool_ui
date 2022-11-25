// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Course1 extends StatelessWidget {
  const Course1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410,
      height: 90,
      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      margin: EdgeInsets.only(right: 7, left: 7, top: 15),
      decoration: BoxDecoration(
          color: Color.fromARGB(180, 227, 224, 224),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 70,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                  image: AssetImage('assets/2.jpeg'), fit: BoxFit.fill),
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Photograhy- Crash Course: ',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '5 Minutes',
                style: TextStyle(fontSize: 13),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.play_circle),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
