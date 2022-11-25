// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Nextpage1 extends StatelessWidget {
  const Nextpage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Center(
          child: ListView(
            children: [
              Text('Food'),
              Text('Food'),
              Text('Food'),
              Text('Food'),
              Text('Food'),
              Text('Food'),
            ],
          ),
        ));
  }
}
