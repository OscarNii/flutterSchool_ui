import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

// ignore: constant_identifier_names
const IMAGES = ["1", "4", "5", "6"];

class Nextpage2 extends StatelessWidget {
  const Nextpage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("swipe tutorials"),
        ),
        body: SwipeDeck(
            widgets: IMAGES
                .map((e) => Image.asset("assets/images/$e.png"))
                .toList()));
  }
}
