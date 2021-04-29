import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Motion App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: secondaryColor,
        fontFamily: 'SourceSansPro',
        // primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool loading = true;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
  }

  Widget build(BuildContext context) {
    return loading ? SplashScreen() : HomeApp();
  }
}
