import 'package:flutter/material.dart';

const textFieldGray = Color.fromARGB(255, 241, 241, 241);
const backGround = Color.fromARGB(255, 253, 253, 253);
const verdeBosta = Color.fromARGB(255, 164, 228, 137);
const iconGray = Color.fromARGB(255, 121, 121, 121);
const grayBackground = Color.fromARGB(255, 239, 239, 239);

final ThemeData mainTheme = ThemeData(
    buttonTheme: ButtonThemeData(buttonColor: verdeBosta),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      focusColor: verdeBosta,
      filled: true,
      fillColor: textFieldGray,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 0, color: Colors.transparent)),
      iconColor: iconGray,
    ),
    fontFamily: 'OpenSans');
const textonormal = TextStyle(fontSize: 25, color: Colors.black54);
const appbartext =
    TextStyle(color: Colors.black54, fontSize: 25, fontFamily: 'OpenSans');
