import 'package:flutter/material.dart';
import 'package:my_new_app/homepage.dart';
//import 'package:my_new_app/homepage.dart';

import 'dart:async';


main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()); // define it once at root level.
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Center(
        child: Text(
          'Welcome to Aradhana',
          style: new TextStyle(
              fontSize: 20.0, color: Colors.white,
               fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}


    
