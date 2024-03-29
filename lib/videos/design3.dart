// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Designss3 extends StatelessWidget {
  const Designss3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.0),
      child: ElevatedButton(
        child: Row(
          children: [
            Image.asset(
              'assets/4.png',
              width: 50.0,
            ),
            Text(
              'Music',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10.0),
          fixedSize: Size(140, 50),
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.white,

          shadowColor: Colors.grey,
          side: BorderSide(color: Colors.black, width: 2),
          shape: StadiumBorder(),
          //alignment: Alignment.center
        ),
      ),
    );
  }
}
