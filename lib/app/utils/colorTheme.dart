import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

const textFieldGray = Color.fromARGB(255, 241, 241, 241);
const backGround = Color.fromARGB(255, 253, 253, 253);
const verdeBosta = Color.fromARGB(255, 164, 228, 137);
const iconGray = Color.fromARGB(255, 121, 121, 121);
const grayBackground = Color.fromARGB(255, 239, 239, 239);
const cleareGrayBrackground = Color.fromARGB(255, 245, 245, 245);
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
        filled: true,
        border: OutlineInputBorder(borderSide: BorderSide(color: verdeBosta)),
        focusColor: backGround,
        fillColor: backGround,
        iconColor: iconGray,
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: cardGray))),
    fontFamily: 'OpenSans');
final textonormal = TextStyle(fontSize: defaultFontSize, color: Colors.black54);
final appbartext = TextStyle(
    color: Colors.black54, fontSize: defaultFontSize, fontFamily: 'OpenSans');
