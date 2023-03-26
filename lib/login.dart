// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_print

import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:school_ui/main.dart';
import 'firebase_options.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Colors.black, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/learn3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Center(
                  child: FutureBuilder(
                    future: Firebase.initializeApp(
                      name: 'schoolfresh',
                      options: DefaultFirebaseOptions.currentPlatform,
                    ),
                    builder: (context, snapshot) {
                      return SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 12),
                              Text(
                                'Ozford School',
                                style: TextStyle(
                                  fontFamily: 'Lobster',
                                  fontSize: 70,
                                  color: Colors.white,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 20.0,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Welcome back, you\'ve been missed',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Colors.black87,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      cursorColor: Colors.red,
                                      keyboardType: TextInputType.emailAddress,
                                      autocorrect: false,
                                      enableSuggestions: false,
                                      controller: _email,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Email or Username',
                                        hintStyle: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.white),
                                        prefixIcon: Icon(
                                          Icons.email_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      controller: _password,
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Enter Password',
                                          hintStyle: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.white,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.password_rounded,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        Color.fromARGB(45, 0, 0, 0),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 20),
                                    textStyle: TextStyle(fontSize: 20),
                                    side: BorderSide(
                                        style: BorderStyle.solid,
                                        width: 2,
                                        color: Colors.white),
                                  ),
                                  onPressed: () async {},
                                  child: Text(
                                    'Sign In',
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor:
                                          Color.fromARGB(231, 244, 54, 54),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      textStyle: TextStyle(fontSize: 15),
                                      side: BorderSide(
                                          style: BorderStyle.solid,
                                          width: 2,
                                          color: Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Home(),
                                        ),
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        'Get Started',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  ElevatedButton(
                                    onPressed: () async {
                                      final email = _email.text;
                                      final password = _password.text;
                                      final userCredential = await FirebaseAuth
                                          .instance
                                          .createUserWithEmailAndPassword(
                                              email: email, password: password);
                                      print(UserCredential);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor:
                                          Color.fromARGB(154, 54, 54, 244),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      textStyle: TextStyle(fontSize: 15),
                                      side: BorderSide(
                                          style: BorderStyle.solid,
                                          width: 2,
                                          color: Colors.white),
                                    ),
                                    child: Text(
                                      'Register Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
