import 'package:flutter/material.dart';
import 'package:projectfinal/screens/home/home.dart';
import 'package:projectfinal/style.dart';

void main() {
  runApp(MaterialApp(
    title: "Booking",
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: azulEscuro
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w900
        ),
        bodyText1: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        subtitle2: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    ),
    ));
}
