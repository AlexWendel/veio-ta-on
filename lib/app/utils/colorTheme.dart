import 'package:flutter/material.dart';

const textFieldGray = Color.fromARGB(255, 241, 241, 241);
const backGround = Color.fromARGB(255, 253, 253, 253);
const verdeBosta = Color.fromARGB(255, 164, 228, 137);
const iconGray = Color.fromARGB(255, 121, 121, 121);
const grayBackground = Color.fromARGB(255, 239, 239, 239);

ThemeData mainTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.transparent))),
            foregroundColor: MaterialStateProperty.all<Color>(iconGray),
            backgroundColor: MaterialStateProperty.all<Color>(verdeBosta))),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, color: Colors.transparent)),
        focusColor: verdeBosta,
        fillColor: verdeBosta,
        iconColor: iconGray,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: verdeBosta))),
    fontFamily: 'OpenSans');
const textonormal = TextStyle(fontSize: 25, color: Colors.black54);
const appbartext =
    TextStyle(color: Colors.black54, fontSize: 25, fontFamily: 'OpenSans');
