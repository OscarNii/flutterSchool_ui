import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:school_ui/login.dart';
import 'package:school_ui/main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 700,
        splash: Icons.home,
        nextScreen: const Page3(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
      ),
    );
  }
}
