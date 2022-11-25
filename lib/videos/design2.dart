// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Designss2 extends StatelessWidget {
  const Designss2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.0),
      child: ElevatedButton(
        child: Row(
          children: [
            Image.asset(
              'assets/6.png',
              width: 50.0,
            ),
            Text(
              'Photograhy',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10.0),
          fixedSize: Size(180, 50),
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          primary: Color.fromARGB(211, 244, 240, 240),
          onPrimary: Color.fromARGB(255, 47, 130, 127),

          shadowColor: Colors.grey,
          side: BorderSide(color: Colors.white, width: 2),
          shape: StadiumBorder(),
          //alignment: Alignment.center
        ),
      ),
    );
  }
}
