import 'package:blog_club/constants/constants.dart';
import 'package:blog_club/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 18,
                fontFamily: 'AR',
                fontWeight: FontWeight.w400,
                color: darkBlue),
            headline2: TextStyle(
                fontSize: 24,
                fontFamily: 'AR',
                fontWeight: FontWeight.bold,
                color: darkBlue),
            headline3: TextStyle(
                fontSize: 18,
                fontFamily: 'AR',
                fontWeight: FontWeight.bold,
                color: Colors.white),
            headline4: TextStyle(
                fontSize: 14,
                fontFamily: 'AR',
                fontWeight: FontWeight.bold,
                color: blue),
            headline5: TextStyle(
              fontSize: 14,
              fontFamily: 'AR',
              fontWeight: FontWeight.w600,
              color: darkGrey,
            ),
            headline6: TextStyle(
              fontSize: 14,
              fontFamily: 'AR',
              fontWeight: FontWeight.w600,
              color: blue,
            ),
          ),
        ),
        home: MainScreen());
  }
}
