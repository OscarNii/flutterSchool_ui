import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

// ignore: constant_identifier_names
const IMAGES = ["js", "flutter", "andriod", "phyton", "swift"];

class Nextpage2 extends StatelessWidget {
  const Nextpage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("swipe tutorials"),
        ),
        body: Center(
          child: SwipeDeck(
            aspectRatio: 1.5,
            widgets: IMAGES
                .map((e) => Image.asset(
                      "assets/$e.jpeg",
                      fit: BoxFit.fill,
                    ))
                .toList(),
          ),
        ));
  }
}
