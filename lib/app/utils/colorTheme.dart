import 'package:flutter/material.dart';

const textFieldGray = Color.fromARGB(255, 241, 241, 241);
const backGround = Color.fromARGB(255, 253, 253, 253);
const verdeBosta = Color.fromARGB(255, 164, 228, 137);
const iconGray = Color.fromARGB(255, 121, 121, 121);
const grayBackground = Color.fromARGB(255, 239, 239, 239);
const cardGray = Colors.black38;

ThemeData mainTheme = ThemeData(
    backgroundColor: backGround,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    side: BorderSide(color: Colors.transparent))),
            foregroundColor: MaterialStateProperty.all<Color>(iconGray),
            backgroundColor: MaterialStateProperty.all<Color>(verdeBosta))),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderSide: BorderSide(color: verdeBosta)),
        focusColor: backGround,
        fillColor: backGround,
        iconColor: iconGray,
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: verdeBosta))),
    fontFamily: 'OpenSans');
const textonormal = TextStyle(fontSize: 20, color: Colors.black54);
const appbartext =
    TextStyle(color: Colors.black54, fontSize: 20, fontFamily: 'OpenSans');
