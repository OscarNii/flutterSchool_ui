// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class Video1 extends StatelessWidget {
  const Video1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Container(
            width: 330,
            height: 210,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                alignment: Alignment.bottomRight,
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15.0),
                      fixedSize: Size(130, 50),
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                      primary: Color.fromARGB(211, 244, 240, 240),
                      onPrimary: Color.fromARGB(255, 47, 130, 127),

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
        ],
      ),
    );
  }
}
